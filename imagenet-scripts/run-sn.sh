#!/usr/bin/env bash

dataset=imagenet
rootdir=/home/ubuntu
exp_id=resnet50_sn
model=resnet50
wd=1e-4
epoch=90
batch_size=128
cnsn_type=sn
pos=post
gpu=1

CUDA_VISIBLE_DEVICES=${gpu} python imagenet.py \
    --data_dir ${rootdir}/data/imagenet/raw-data \
    --exp_dir ${rootdir}/exp \
    --corrupt_data_dir ${rootdir}/data/ImageNet-C \
    --dataset ${dataset} \
    --batch_size ${batch_size} \
    --model ${model} \
    --lr 0.1 \
    --momentum 0.9 \
    --weight_decay ${wd} \
    --workers 4 \
    --exp_id ${exp_id} \
    --epochs ${epoch} \
    --pos ${pos} \
    --cnsn_type ${cnsn_type} \
