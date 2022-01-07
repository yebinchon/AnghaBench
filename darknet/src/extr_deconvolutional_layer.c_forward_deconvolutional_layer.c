
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float* input; float* workspace; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int size; int n; int h; int w; int c; int outputs; int batch; float* weights; int out_h; int out_w; int activation; scalar_t__ output; int biases; scalar_t__ batch_normalize; int pad; int stride; int out_c; } ;
typedef TYPE_2__ layer ;


 int activate_array (scalar_t__,int,int ) ;
 int add_bias (scalar_t__,int ,int,int,int) ;
 int col2im_cpu (float*,int ,int,int,int,int ,int ,scalar_t__) ;
 int fill_cpu (int,int ,scalar_t__,int) ;
 int forward_batchnorm_layer (TYPE_2__ const,TYPE_1__) ;
 int gemm_cpu (int,int ,int,int,int,int,float*,int,float*,int,int ,float*,int) ;

void forward_deconvolutional_layer(const layer l, network net)
{
    int i;

    int m = l.size*l.size*l.n;
    int n = l.h*l.w;
    int k = l.c;

    fill_cpu(l.outputs*l.batch, 0, l.output, 1);

    for(i = 0; i < l.batch; ++i){
        float *a = l.weights;
        float *b = net.input + i*l.c*l.h*l.w;
        float *c = net.workspace;

        gemm_cpu(1,0,m,n,k,1,a,m,b,n,0,c,n);

        col2im_cpu(net.workspace, l.out_c, l.out_h, l.out_w, l.size, l.stride, l.pad, l.output+i*l.outputs);
    }
    if (l.batch_normalize) {
        forward_batchnorm_layer(l, net);
    } else {
        add_bias(l.output, l.biases, l.batch, l.n, l.out_w*l.out_h);
    }
    activate_array(l.output, l.batch*l.n*l.out_w*l.out_h, l.activation);
}
