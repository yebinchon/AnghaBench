
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float* workspace; float* input; float* delta; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int n; int groups; int size; int c; int out_w; int out_h; int outputs; int batch; float* delta; float* weight_updates; int nweights; int h; int w; float* weights; int pad; int stride; int bias_updates; scalar_t__ batch_normalize; int activation; int output; } ;
typedef TYPE_2__ convolutional_layer ;


 int backward_batchnorm_layer (TYPE_2__,TYPE_1__) ;
 int backward_bias (int ,float*,int,int,int) ;
 int col2im_cpu (float*,int,int,int,int,int ,int ,float*) ;
 int gemm (int,int,int,int,int,int,float*,int,float*,int,int,float*,int) ;
 int gradient_array (int ,int,int ,float*) ;
 int im2col_cpu (float*,int,int,int,int,int ,int ,float*) ;

void backward_convolutional_layer(convolutional_layer l, network net)
{
    int i, j;
    int m = l.n/l.groups;
    int n = l.size*l.size*l.c/l.groups;
    int k = l.out_w*l.out_h;

    gradient_array(l.output, l.outputs*l.batch, l.activation, l.delta);

    if(l.batch_normalize){
        backward_batchnorm_layer(l, net);
    } else {
        backward_bias(l.bias_updates, l.delta, l.batch, l.n, k);
    }

    for(i = 0; i < l.batch; ++i){
        for(j = 0; j < l.groups; ++j){
            float *a = l.delta + (i*l.groups + j)*m*k;
            float *b = net.workspace;
            float *c = l.weight_updates + j*l.nweights/l.groups;

            float *im = net.input + (i*l.groups + j)*l.c/l.groups*l.h*l.w;
            float *imd = net.delta + (i*l.groups + j)*l.c/l.groups*l.h*l.w;

            if(l.size == 1){
                b = im;
            } else {
                im2col_cpu(im, l.c/l.groups, l.h, l.w,
                        l.size, l.stride, l.pad, b);
            }

            gemm(0,1,m,n,k,1,a,k,b,k,1,c,n);

            if (net.delta) {
                a = l.weights + j*l.nweights/l.groups;
                b = l.delta + (i*l.groups + j)*m*k;
                c = net.workspace;
                if (l.size == 1) {
                    c = imd;
                }

                gemm(1,0,n,k,m,1,a,n,b,k,0,c,k);

                if (l.size != 1) {
                    col2im_cpu(net.workspace, l.c/l.groups, l.h, l.w, l.size, l.stride, l.pad, imd);
                }
            }
        }
    }
}
