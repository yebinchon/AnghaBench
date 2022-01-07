
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; int w; int c; int n; int batch; int stride; int size; int nweights; int nbiases; float* weights; int* weight_updates; int* biases; int* bias_updates; int pad; int out_h; int out_w; int out_c; int outputs; int inputs; int* output; int* delta; int batch_normalize; int* scales; int* m; int* v; int* bias_m; int* scale_m; int* bias_v; int* scale_v; int workspace_size; int activation; int normTensorDesc; int dstTensorDesc; void* x_norm_gpu; void* x_gpu; void* scale_updates_gpu; void* scales_gpu; void* variance_delta_gpu; void* mean_delta_gpu; void* rolling_variance_gpu; void* rolling_mean_gpu; void* variance_gpu; void* mean_gpu; void* output_gpu; void* delta_gpu; void* bias_updates_gpu; void* biases_gpu; void* weight_updates_gpu; void* weights_gpu; void* scale_v_gpu; void* scale_m_gpu; void* bias_v_gpu; void* bias_m_gpu; void* v_gpu; void* m_gpu; int update_gpu; int backward_gpu; int forward_gpu; void* x_norm; void* x; void* rolling_variance; void* rolling_mean; void* variance_delta; void* mean_delta; void* variance; void* mean; void* scale_updates; int update; int backward; int forward; int type; int member_0; } ;
typedef TYPE_1__ layer ;
typedef int ACTIVATION ;


 int CUDNN_DATA_FLOAT ;
 int CUDNN_TENSOR_NCHW ;
 int DECONVOLUTIONAL ;
 int backward_deconvolutional_layer ;
 int backward_deconvolutional_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (int*,int) ;
 int cudnnCreateTensorDescriptor (int *) ;
 int cudnnSetTensor4dDescriptor (int ,int ,int ,int,int,int,int) ;
 int forward_deconvolutional_layer ;
 int forward_deconvolutional_layer_gpu ;
 int fprintf (int ,char*,int,int,int,int,int,int,int,int,int,int) ;
 int get_workspace_size (TYPE_1__) ;
 scalar_t__ gpu_index ;
 float rand_normal () ;
 int scal_cpu (int,float,float*,int) ;
 int stderr ;
 int update_deconvolutional_layer ;
 int update_deconvolutional_layer_gpu ;

layer make_deconvolutional_layer(int batch, int h, int w, int c, int n, int size, int stride, int padding, ACTIVATION activation, int batch_normalize, int adam)
{
    int i;
    layer l = {0};
    l.type = DECONVOLUTIONAL;

    l.h = h;
    l.w = w;
    l.c = c;
    l.n = n;
    l.batch = batch;
    l.stride = stride;
    l.size = size;

    l.nweights = c*n*size*size;
    l.nbiases = n;

    l.weights = calloc(c*n*size*size, sizeof(float));
    l.weight_updates = calloc(c*n*size*size, sizeof(float));

    l.biases = calloc(n, sizeof(float));
    l.bias_updates = calloc(n, sizeof(float));


    float scale = .02;
    for(i = 0; i < c*n*size*size; ++i) l.weights[i] = scale*rand_normal();

    for(i = 0; i < n; ++i){
        l.biases[i] = 0;
    }
    l.pad = padding;

    l.out_h = (l.h - 1) * l.stride + l.size - 2*l.pad;
    l.out_w = (l.w - 1) * l.stride + l.size - 2*l.pad;
    l.out_c = n;
    l.outputs = l.out_w * l.out_h * l.out_c;
    l.inputs = l.w * l.h * l.c;

    scal_cpu(l.nweights, (float)l.out_w*l.out_h/(l.w*l.h), l.weights, 1);

    l.output = calloc(l.batch*l.outputs, sizeof(float));
    l.delta = calloc(l.batch*l.outputs, sizeof(float));

    l.forward = forward_deconvolutional_layer;
    l.backward = backward_deconvolutional_layer;
    l.update = update_deconvolutional_layer;

    l.batch_normalize = batch_normalize;

    if(batch_normalize){
        l.scales = calloc(n, sizeof(float));
        l.scale_updates = calloc(n, sizeof(float));
        for(i = 0; i < n; ++i){
            l.scales[i] = 1;
        }

        l.mean = calloc(n, sizeof(float));
        l.variance = calloc(n, sizeof(float));

        l.mean_delta = calloc(n, sizeof(float));
        l.variance_delta = calloc(n, sizeof(float));

        l.rolling_mean = calloc(n, sizeof(float));
        l.rolling_variance = calloc(n, sizeof(float));
        l.x = calloc(l.batch*l.outputs, sizeof(float));
        l.x_norm = calloc(l.batch*l.outputs, sizeof(float));
    }
    if(adam){
        l.m = calloc(c*n*size*size, sizeof(float));
        l.v = calloc(c*n*size*size, sizeof(float));
        l.bias_m = calloc(n, sizeof(float));
        l.scale_m = calloc(n, sizeof(float));
        l.bias_v = calloc(n, sizeof(float));
        l.scale_v = calloc(n, sizeof(float));
    }
    l.activation = activation;
    l.workspace_size = get_workspace_size(l);

    fprintf(stderr, "deconv%5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n", n, size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c);

    return l;
}
