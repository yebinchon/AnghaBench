
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float* input; scalar_t__ delta; int workspace; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int out_w; int out_h; int outputs; int batch; float* delta; int w; int h; int c; int size; float* weight_updates; int n; float* weights; int pad; int stride; int bias_updates; int activation; int output; } ;
typedef TYPE_2__ local_layer ;


 int axpy_cpu (int,int,float*,int,int ,int) ;
 int col2im_cpu (int ,int,int,int,int,int ,int ,scalar_t__) ;
 int gemm (int,int,int,int,int,int,float*,int,float*,int,int,float*,int) ;
 int gradient_array (int ,int,int ,float*) ;
 int im2col_cpu (float*,int,int,int,int,int ,int ,int ) ;

void backward_local_layer(local_layer l, network net)
{
    int i, j;
    int locations = l.out_w*l.out_h;

    gradient_array(l.output, l.outputs*l.batch, l.activation, l.delta);

    for(i = 0; i < l.batch; ++i){
        axpy_cpu(l.outputs, 1, l.delta + i*l.outputs, 1, l.bias_updates, 1);
    }

    for(i = 0; i < l.batch; ++i){
        float *input = net.input + i*l.w*l.h*l.c;
        im2col_cpu(input, l.c, l.h, l.w,
                l.size, l.stride, l.pad, net.workspace);

        for(j = 0; j < locations; ++j){
            float *a = l.delta + i*l.outputs + j;
            float *b = net.workspace + j;
            float *c = l.weight_updates + j*l.size*l.size*l.c*l.n;
            int m = l.n;
            int n = l.size*l.size*l.c;
            int k = 1;

            gemm(0,1,m,n,k,1,a,locations,b,locations,1,c,n);
        }

        if(net.delta){
            for(j = 0; j < locations; ++j){
                float *a = l.weights + j*l.size*l.size*l.c*l.n;
                float *b = l.delta + i*l.outputs + j;
                float *c = net.workspace + j;

                int m = l.size*l.size*l.c;
                int n = 1;
                int k = l.n;

                gemm(1,0,m,n,k,1,a,m,b,locations,0,c,locations);
            }

            col2im_cpu(net.workspace, l.c, l.h, l.w, l.size, l.stride, l.pad, net.delta+i*l.c*l.h*l.w);
        }
    }
}
