
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int batch; int h; int out_h; int w; int out_w; int c; int out_c; int* output; int* delta; int inputs; int outputs; int* scales; int* scale_updates; int* biases; int* bias_updates; int* mean; int* variance; int normTensorDesc; int dstTensorDesc; void* x_norm_gpu; void* x_gpu; void* variance_delta_gpu; void* mean_delta_gpu; void* rolling_variance_gpu; void* rolling_mean_gpu; void* variance_gpu; void* mean_gpu; void* scale_updates_gpu; void* scales_gpu; void* bias_updates_gpu; void* biases_gpu; void* delta_gpu; void* output_gpu; int backward_gpu; int forward_gpu; int backward; int forward; void* rolling_variance; void* rolling_mean; int type; int member_0; } ;
typedef TYPE_1__ layer ;


 int BATCHNORM ;
 int CUDNN_DATA_FLOAT ;
 int CUDNN_TENSOR_NCHW ;
 int backward_batchnorm_layer ;
 int backward_batchnorm_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (int*,int) ;
 int cudnnCreateTensorDescriptor (int *) ;
 int cudnnSetTensor4dDescriptor (int ,int ,int ,int,int,int,int) ;
 int forward_batchnorm_layer ;
 int forward_batchnorm_layer_gpu ;
 int fprintf (int ,char*,int,int,int) ;
 int stderr ;

layer make_batchnorm_layer(int batch, int w, int h, int c)
{
    fprintf(stderr, "Batch Normalization Layer: %d x %d x %d image\n", w,h,c);
    layer l = {0};
    l.type = BATCHNORM;
    l.batch = batch;
    l.h = l.out_h = h;
    l.w = l.out_w = w;
    l.c = l.out_c = c;
    l.output = calloc(h * w * c * batch, sizeof(float));
    l.delta = calloc(h * w * c * batch, sizeof(float));
    l.inputs = w*h*c;
    l.outputs = l.inputs;

    l.scales = calloc(c, sizeof(float));
    l.scale_updates = calloc(c, sizeof(float));
    l.biases = calloc(c, sizeof(float));
    l.bias_updates = calloc(c, sizeof(float));
    int i;
    for(i = 0; i < c; ++i){
        l.scales[i] = 1;
    }

    l.mean = calloc(c, sizeof(float));
    l.variance = calloc(c, sizeof(float));

    l.rolling_mean = calloc(c, sizeof(float));
    l.rolling_variance = calloc(c, sizeof(float));

    l.forward = forward_batchnorm_layer;
    l.backward = backward_batchnorm_layer;
    return l;
}
