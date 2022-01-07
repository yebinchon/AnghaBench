
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float* input; float* workspace; float* delta; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int outputs; int batch; int n; int out_w; int out_h; int c; int size; int h; int w; float* weight_updates; float* weights; int pad; int stride; int out_c; scalar_t__ delta; int bias_updates; scalar_t__ batch_normalize; int activation; int output; } ;
typedef TYPE_2__ layer ;


 int backward_batchnorm_layer (TYPE_2__,TYPE_1__) ;
 int backward_bias (int ,scalar_t__,int,int,int) ;
 int gemm_cpu (int ,int,int,int,int,int,float*,int,float*,int,int,float*,int) ;
 int gradient_array (int ,int,int ,scalar_t__) ;
 int im2col_cpu (scalar_t__,int ,int,int,int,int ,int ,float*) ;

void backward_deconvolutional_layer(layer l, network net)
{
    int i;

    gradient_array(l.output, l.outputs*l.batch, l.activation, l.delta);

    if(l.batch_normalize){
        backward_batchnorm_layer(l, net);
    } else {
        backward_bias(l.bias_updates, l.delta, l.batch, l.n, l.out_w*l.out_h);
    }



    for(i = 0; i < l.batch; ++i){
        int m = l.c;
        int n = l.size*l.size*l.n;
        int k = l.h*l.w;

        float *a = net.input + i*m*k;
        float *b = net.workspace;
        float *c = l.weight_updates;

        im2col_cpu(l.delta + i*l.outputs, l.out_c, l.out_h, l.out_w,
                l.size, l.stride, l.pad, b);
        gemm_cpu(0,1,m,n,k,1,a,k,b,k,1,c,n);

        if(net.delta){
            int m = l.c;
            int n = l.h*l.w;
            int k = l.size*l.size*l.n;

            float *a = l.weights;
            float *b = net.workspace;
            float *c = net.delta + i*n*m;

            gemm_cpu(0,0,m,n,k,1,a,k,b,n,1,c,n);
        }
    }
}
