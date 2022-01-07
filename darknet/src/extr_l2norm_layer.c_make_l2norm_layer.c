
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int batch; int inputs; int outputs; void* delta; void* delta_gpu; void* output; void* scales_gpu; void* output_gpu; int backward_gpu; int forward_gpu; int backward; int forward; void* scales; int type; int member_0; } ;
typedef TYPE_1__ layer ;


 int L2NORM ;
 int backward_l2norm_layer ;
 int backward_l2norm_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (void*,int) ;
 int forward_l2norm_layer ;
 int forward_l2norm_layer_gpu ;
 int fprintf (int ,char*,int) ;
 int stderr ;

layer make_l2norm_layer(int batch, int inputs)
{
    fprintf(stderr, "l2norm                                         %4d\n", inputs);
    layer l = {0};
    l.type = L2NORM;
    l.batch = batch;
    l.inputs = inputs;
    l.outputs = inputs;
    l.output = calloc(inputs*batch, sizeof(float));
    l.scales = calloc(inputs*batch, sizeof(float));
    l.delta = calloc(inputs*batch, sizeof(float));

    l.forward = forward_l2norm_layer;
    l.backward = backward_l2norm_layer;
    return l;
}
