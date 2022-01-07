
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float scale; int batch; int inputs; int outputs; void* delta; void* output_gpu; void* output; void* delta_gpu; int backward_gpu; int forward_gpu; int backward; int forward; void* cost; int cost_type; int type; int member_0; } ;
typedef TYPE_1__ cost_layer ;
typedef int COST_TYPE ;


 int COST ;
 int backward_cost_layer ;
 int backward_cost_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (void*,int) ;
 int forward_cost_layer ;
 int forward_cost_layer_gpu ;
 int fprintf (int ,char*,int) ;
 int stderr ;

cost_layer make_cost_layer(int batch, int inputs, COST_TYPE cost_type, float scale)
{
    fprintf(stderr, "cost                                           %4d\n", inputs);
    cost_layer l = {0};
    l.type = COST;

    l.scale = scale;
    l.batch = batch;
    l.inputs = inputs;
    l.outputs = inputs;
    l.cost_type = cost_type;
    l.delta = calloc(inputs*batch, sizeof(float));
    l.output = calloc(inputs*batch, sizeof(float));
    l.cost = calloc(1, sizeof(float));

    l.forward = forward_cost_layer;
    l.backward = backward_cost_layer;







    return l;
}
