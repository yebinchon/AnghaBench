
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int w; int h; int out_w; int out_h; int outputs; int out_c; int inputs; int c; int batch; int workspace_size; void* output; void* x_norm_gpu; void* x_gpu; scalar_t__ batch_normalize; void* output_gpu; void* delta; void* delta_gpu; void* x_norm; void* x; } ;
typedef TYPE_1__ convolutional_layer ;


 int convolutional_out_height (TYPE_1__) ;
 int convolutional_out_width (TYPE_1__) ;
 int cuda_free (void*) ;
 void* cuda_make_array (void*,int) ;
 int cudnn_convolutional_setup (TYPE_1__*) ;
 int get_workspace_size (TYPE_1__) ;
 void* realloc (void*,int) ;

void resize_convolutional_layer(convolutional_layer *l, int w, int h)
{
    l->w = w;
    l->h = h;
    int out_w = convolutional_out_width(*l);
    int out_h = convolutional_out_height(*l);

    l->out_w = out_w;
    l->out_h = out_h;

    l->outputs = l->out_h * l->out_w * l->out_c;
    l->inputs = l->w * l->h * l->c;

    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));
    l->delta = realloc(l->delta, l->batch*l->outputs*sizeof(float));
    if(l->batch_normalize){
        l->x = realloc(l->x, l->batch*l->outputs*sizeof(float));
        l->x_norm = realloc(l->x_norm, l->batch*l->outputs*sizeof(float));
    }
    l->workspace_size = get_workspace_size(*l);
}
