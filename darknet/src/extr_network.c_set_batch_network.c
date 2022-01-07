
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int batch; int n; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int batch; scalar_t__ type; int out_h; int out_w; int out_c; int normTensorDesc; int dstTensorDesc; } ;
typedef TYPE_2__ layer ;


 scalar_t__ CONVOLUTIONAL ;
 int CUDNN_DATA_FLOAT ;
 int CUDNN_TENSOR_NCHW ;
 scalar_t__ DECONVOLUTIONAL ;
 int cudnnSetTensor4dDescriptor (int ,int ,int ,int,int ,int,int) ;
 int cudnn_convolutional_setup (TYPE_2__*) ;

void set_batch_network(network *net, int b)
{
    net->batch = b;
    int i;
    for(i = 0; i < net->n; ++i){
        net->layers[i].batch = b;
    }
}
