
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int out_w; int stride; int out_h; int outputs; int out_c; int inputs; int c; int batch; void* delta; void* delta_gpu; void* output; void* output_gpu; scalar_t__ reverse; } ;
typedef TYPE_1__ layer ;


 int cuda_free (void*) ;
 void* cuda_make_array (void*,int) ;
 void* realloc (void*,int) ;

void resize_upsample_layer(layer *l, int w, int h)
{
    l->w = w;
    l->h = h;
    l->out_w = w*l->stride;
    l->out_h = h*l->stride;
    if(l->reverse){
        l->out_w = w/l->stride;
        l->out_h = h/l->stride;
    }
    l->outputs = l->out_w*l->out_h*l->out_c;
    l->inputs = l->h*l->w*l->c;
    l->delta = realloc(l->delta, l->outputs*l->batch*sizeof(float));
    l->output = realloc(l->output, l->outputs*l->batch*sizeof(float));
}
