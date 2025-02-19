
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int batch; int inputs; int outputs; void* delta; void* delta_gpu; void* loss; void* loss_gpu; void* output; void* output_gpu; int backward_gpu; int forward_gpu; int backward; int forward; void* cost; int type; int member_0; } ;
typedef TYPE_1__ layer ;


 int LOGXENT ;
 int backward_logistic_layer ;
 int backward_logistic_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (void*,int) ;
 int forward_logistic_layer ;
 int forward_logistic_layer_gpu ;
 int fprintf (int ,char*,int) ;
 int stderr ;

layer make_logistic_layer(int batch, int inputs)
{
    fprintf(stderr, "logistic x entropy                             %4d\n", inputs);
    layer l = {0};
    l.type = LOGXENT;
    l.batch = batch;
    l.inputs = inputs;
    l.outputs = inputs;
    l.loss = calloc(inputs*batch, sizeof(float));
    l.output = calloc(inputs*batch, sizeof(float));
    l.delta = calloc(inputs*batch, sizeof(float));
    l.cost = calloc(1, sizeof(float));

    l.forward = forward_logistic_layer;
    l.backward = backward_logistic_layer;
    return l;
}
