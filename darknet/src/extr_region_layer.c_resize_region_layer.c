
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int outputs; int n; int classes; int coords; int inputs; int batch; void* output; void* output_gpu; void* delta; void* delta_gpu; } ;
typedef TYPE_1__ layer ;


 int cuda_free (void*) ;
 void* cuda_make_array (void*,int) ;
 void* realloc (void*,int) ;

void resize_region_layer(layer *l, int w, int h)
{
    l->w = w;
    l->h = h;

    l->outputs = h*w*l->n*(l->classes + l->coords + 1);
    l->inputs = l->outputs;

    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
    l->delta = realloc(l->delta, l->batch*l->outputs*sizeof(float));
}
