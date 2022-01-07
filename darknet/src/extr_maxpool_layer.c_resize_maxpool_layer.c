
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int w; int inputs; int c; int out_w; int pad; int size; int stride; int out_h; int outputs; int batch; float* output_gpu; float* delta_gpu; void* delta; void* output; scalar_t__ indexes_gpu; void* indexes; } ;
typedef TYPE_1__ maxpool_layer ;


 int cuda_free (float*) ;
 void* cuda_make_array (void*,int) ;
 scalar_t__ cuda_make_int_array (int ,int) ;
 void* realloc (void*,int) ;

void resize_maxpool_layer(maxpool_layer *l, int w, int h)
{
    l->h = h;
    l->w = w;
    l->inputs = h*w*l->c;

    l->out_w = (w + l->pad - l->size)/l->stride + 1;
    l->out_h = (h + l->pad - l->size)/l->stride + 1;
    l->outputs = l->out_w * l->out_h * l->c;
    int output_size = l->outputs * l->batch;

    l->indexes = realloc(l->indexes, output_size * sizeof(int));
    l->output = realloc(l->output, output_size * sizeof(float));
    l->delta = realloc(l->delta, output_size * sizeof(float));
}
