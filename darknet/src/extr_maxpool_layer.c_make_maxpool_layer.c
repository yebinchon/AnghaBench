
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int batch; int h; int w; int c; int pad; int out_w; int out_h; int out_c; int outputs; int inputs; int size; int stride; void* delta; void* delta_gpu; void* output; void* output_gpu; int indexes_gpu; int backward_gpu; int forward_gpu; int backward; int forward; void* indexes; int type; int member_0; } ;
typedef TYPE_1__ maxpool_layer ;


 int MAXPOOL ;
 int backward_maxpool_layer ;
 int backward_maxpool_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (void*,int) ;
 int cuda_make_int_array (int ,int) ;
 int forward_maxpool_layer ;
 int forward_maxpool_layer_gpu ;
 int fprintf (int ,char*,int,int,int,int,int,int,int,int,int) ;
 int stderr ;

maxpool_layer make_maxpool_layer(int batch, int h, int w, int c, int size, int stride, int padding)
{
    maxpool_layer l = {0};
    l.type = MAXPOOL;
    l.batch = batch;
    l.h = h;
    l.w = w;
    l.c = c;
    l.pad = padding;
    l.out_w = (w + padding - size)/stride + 1;
    l.out_h = (h + padding - size)/stride + 1;
    l.out_c = c;
    l.outputs = l.out_h * l.out_w * l.out_c;
    l.inputs = h*w*c;
    l.size = size;
    l.stride = stride;
    int output_size = l.out_h * l.out_w * l.out_c * batch;
    l.indexes = calloc(output_size, sizeof(int));
    l.output = calloc(output_size, sizeof(float));
    l.delta = calloc(output_size, sizeof(float));
    l.forward = forward_maxpool_layer;
    l.backward = backward_maxpool_layer;







    fprintf(stderr, "max          %d x %d / %d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n", size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c);
    return l;
}
