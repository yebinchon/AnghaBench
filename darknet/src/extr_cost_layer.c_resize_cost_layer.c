
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inputs; int outputs; int batch; void* output; void* output_gpu; void* delta; void* delta_gpu; } ;
typedef TYPE_1__ cost_layer ;


 int cuda_free (void*) ;
 void* cuda_make_array (void*,int) ;
 void* realloc (void*,int) ;

void resize_cost_layer(cost_layer *l, int inputs)
{
    l->inputs = inputs;
    l->outputs = inputs;
    l->delta = realloc(l->delta, inputs*l->batch*sizeof(float));
    l->output = realloc(l->output, inputs*l->batch*sizeof(float));






}
