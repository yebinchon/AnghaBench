
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float* input; int workspace; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int batch; int outputs; float* output; int w; int h; int c; int size; float* weights; int n; int activation; int pad; int stride; int biases; } ;
typedef TYPE_2__ local_layer ;


 int activate_array (float*,int,int ) ;
 int copy_cpu (int,int ,int,float*,int) ;
 int gemm (int ,int ,int,int,int,int,float*,int,float*,int,int,float*,int) ;
 int im2col_cpu (float*,int,int,int,int,int ,int ,int ) ;
 int local_out_height (TYPE_2__ const) ;
 int local_out_width (TYPE_2__ const) ;

void forward_local_layer(const local_layer l, network net)
{
    int out_h = local_out_height(l);
    int out_w = local_out_width(l);
    int i, j;
    int locations = out_h * out_w;

    for(i = 0; i < l.batch; ++i){
        copy_cpu(l.outputs, l.biases, 1, l.output + i*l.outputs, 1);
    }

    for(i = 0; i < l.batch; ++i){
        float *input = net.input + i*l.w*l.h*l.c;
        im2col_cpu(input, l.c, l.h, l.w,
                l.size, l.stride, l.pad, net.workspace);
        float *output = l.output + i*l.outputs;
        for(j = 0; j < locations; ++j){
            float *a = l.weights + j*l.size*l.size*l.c*l.n;
            float *b = net.workspace + j;
            float *c = output + j;

            int m = l.n;
            int n = 1;
            int k = l.size*l.size*l.c;

            gemm(0,0,m,n,k,1,a,k,b,locations,1,c,locations);
        }
    }
    activate_array(l.output, l.outputs*l.batch, l.activation);
}
