
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int learning_rate_scale; int inputs; int outputs; int batch; int batch_normalize; int h; int w; int c; int out_h; int out_w; int out_c; int* output; int* delta; int* weight_updates; int* bias_updates; float* weights; int* biases; int* scales; int* scale_updates; int* mean; int* variance; int activation; int normTensorDesc; int dstTensorDesc; void* x_norm_gpu; void* x_gpu; void* scale_updates_gpu; void* scales_gpu; void* variance_delta_gpu; void* mean_delta_gpu; void* rolling_variance_gpu; void* rolling_mean_gpu; void* variance_gpu; void* mean_gpu; void* scale_v_gpu; void* scale_m_gpu; void* bias_v_gpu; void* bias_m_gpu; void* v_gpu; void* m_gpu; void* delta_gpu; void* output_gpu; void* bias_updates_gpu; void* weight_updates_gpu; void* biases_gpu; void* weights_gpu; int update_gpu; int backward_gpu; int forward_gpu; void* x_norm; void* x; void* rolling_variance; void* rolling_mean; void* variance_delta; void* mean_delta; void* scale_v; void* bias_v; void* scale_m; void* bias_m; void* v; void* m; int update; int backward; int forward; int type; int member_0; } ;
typedef TYPE_1__ layer ;
typedef int ACTIVATION ;


 int CONNECTED ;
 int CUDNN_DATA_FLOAT ;
 int CUDNN_TENSOR_NCHW ;
 int backward_connected_layer ;
 int backward_connected_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (int*,int) ;
 int cudnnCreateTensorDescriptor (int *) ;
 int cudnnSetTensor4dDescriptor (int ,int ,int ,int,int,int,int) ;
 int forward_connected_layer ;
 int forward_connected_layer_gpu ;
 int fprintf (int ,char*,int,int) ;
 float rand_uniform (int,int) ;
 float sqrt (int) ;
 int stderr ;
 int update_connected_layer ;
 int update_connected_layer_gpu ;

layer make_connected_layer(int batch, int inputs, int outputs, ACTIVATION activation, int batch_normalize, int adam)
{
    int i;
    layer l = {0};
    l.learning_rate_scale = 1;
    l.type = CONNECTED;

    l.inputs = inputs;
    l.outputs = outputs;
    l.batch=batch;
    l.batch_normalize = batch_normalize;
    l.h = 1;
    l.w = 1;
    l.c = inputs;
    l.out_h = 1;
    l.out_w = 1;
    l.out_c = outputs;

    l.output = calloc(batch*outputs, sizeof(float));
    l.delta = calloc(batch*outputs, sizeof(float));

    l.weight_updates = calloc(inputs*outputs, sizeof(float));
    l.bias_updates = calloc(outputs, sizeof(float));

    l.weights = calloc(outputs*inputs, sizeof(float));
    l.biases = calloc(outputs, sizeof(float));

    l.forward = forward_connected_layer;
    l.backward = backward_connected_layer;
    l.update = update_connected_layer;


    float scale = sqrt(2./inputs);
    for(i = 0; i < outputs*inputs; ++i){
        l.weights[i] = scale*rand_uniform(-1, 1);
    }

    for(i = 0; i < outputs; ++i){
        l.biases[i] = 0;
    }

    if(adam){
        l.m = calloc(l.inputs*l.outputs, sizeof(float));
        l.v = calloc(l.inputs*l.outputs, sizeof(float));
        l.bias_m = calloc(l.outputs, sizeof(float));
        l.scale_m = calloc(l.outputs, sizeof(float));
        l.bias_v = calloc(l.outputs, sizeof(float));
        l.scale_v = calloc(l.outputs, sizeof(float));
    }
    if(batch_normalize){
        l.scales = calloc(outputs, sizeof(float));
        l.scale_updates = calloc(outputs, sizeof(float));
        for(i = 0; i < outputs; ++i){
            l.scales[i] = 1;
        }

        l.mean = calloc(outputs, sizeof(float));
        l.mean_delta = calloc(outputs, sizeof(float));
        l.variance = calloc(outputs, sizeof(float));
        l.variance_delta = calloc(outputs, sizeof(float));

        l.rolling_mean = calloc(outputs, sizeof(float));
        l.rolling_variance = calloc(outputs, sizeof(float));

        l.x = calloc(batch*outputs, sizeof(float));
        l.x_norm = calloc(batch*outputs, sizeof(float));
    }
    l.activation = activation;
    fprintf(stderr, "connected                            %4d  ->  %4d\n", inputs, outputs);
    return l;
}
