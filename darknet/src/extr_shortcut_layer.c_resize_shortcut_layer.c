
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int out_w; int h; int out_h; int outputs; int out_c; int inputs; int batch; void* delta; void* delta_gpu; void* output; void* output_gpu; } ;
typedef TYPE_1__ layer ;


 int assert (int) ;
 int cuda_free (void*) ;
 void* cuda_make_array (void*,int) ;
 void* realloc (void*,int) ;

void resize_shortcut_layer(layer *l, int w, int h)
{
    assert(l->w == l->out_w);
    assert(l->h == l->out_h);
    l->w = l->out_w = w;
    l->h = l->out_h = h;
    l->outputs = w*h*l->out_c;
    l->inputs = l->outputs;
    l->delta = realloc(l->delta, l->outputs*l->batch*sizeof(float));
    l->output = realloc(l->output, l->outputs*l->batch*sizeof(float));
}
