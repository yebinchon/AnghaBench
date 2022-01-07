
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; int w; int out_h; int stride; int size; int pad; int out_w; int outputs; int out_c; int inputs; int c; int batch; int workspace_size; int normTensorDesc; int dstTensorDesc; void* output; void* x_norm_gpu; void* x_gpu; scalar_t__ batch_normalize; void* output_gpu; void* delta; void* delta_gpu; void* x_norm; void* x; } ;
typedef TYPE_1__ layer ;


 int CUDNN_DATA_FLOAT ;
 int CUDNN_TENSOR_NCHW ;
 int cuda_free (void*) ;
 void* cuda_make_array (void*,int) ;
 int cudnnSetTensor4dDescriptor (int ,int ,int ,int,int,int,int) ;
 int get_workspace_size (TYPE_1__) ;
 void* realloc (void*,int) ;

void resize_deconvolutional_layer(layer *l, int h, int w)
{
    l->h = h;
    l->w = w;
    l->out_h = (l->h - 1) * l->stride + l->size - 2*l->pad;
    l->out_w = (l->w - 1) * l->stride + l->size - 2*l->pad;

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
