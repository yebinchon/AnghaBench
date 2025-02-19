
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {float* input; float* workspace; } ;
typedef TYPE_1__ network ;
struct TYPE_9__ {int outputs; int batch; float* output; float* weights; int n; int c; int groups; int size; int h; int w; float* binary_input; int out_w; int out_h; int nweights; scalar_t__ xnor; scalar_t__ binary; int activation; int biases; scalar_t__ batch_normalize; int pad; int stride; int binary_weights; } ;
typedef TYPE_2__ convolutional_layer ;


 int activate_array (float*,int,int ) ;
 int add_bias (float*,int ,int,int,int) ;
 int binarize_cpu (float*,int,float*) ;
 int binarize_weights (float*,int,int,int ) ;
 int fill_cpu (int,int ,float*,int) ;
 int forward_batchnorm_layer (TYPE_2__,TYPE_1__) ;
 int gemm (int ,int ,int,int,int,int,float*,int,float*,int,int,float*,int) ;
 int im2col_cpu (float*,int,int,int,int,int ,int ,float*) ;
 int swap_binary (TYPE_2__*) ;

void forward_convolutional_layer(convolutional_layer l, network net)
{
    int i, j;

    fill_cpu(l.outputs*l.batch, 0, l.output, 1);

    if(l.xnor){
        binarize_weights(l.weights, l.n, l.c/l.groups*l.size*l.size, l.binary_weights);
        swap_binary(&l);
        binarize_cpu(net.input, l.c*l.h*l.w*l.batch, l.binary_input);
        net.input = l.binary_input;
    }

    int m = l.n/l.groups;
    int k = l.size*l.size*l.c/l.groups;
    int n = l.out_w*l.out_h;
    for(i = 0; i < l.batch; ++i){
        for(j = 0; j < l.groups; ++j){
            float *a = l.weights + j*l.nweights/l.groups;
            float *b = net.workspace;
            float *c = l.output + (i*l.groups + j)*n*m;
            float *im = net.input + (i*l.groups + j)*l.c/l.groups*l.h*l.w;

            if (l.size == 1) {
                b = im;
            } else {
                im2col_cpu(im, l.c/l.groups, l.h, l.w, l.size, l.stride, l.pad, b);
            }
            gemm(0,0,m,n,k,1,a,k,b,n,1,c,n);
        }
    }

    if(l.batch_normalize){
        forward_batchnorm_layer(l, net);
    } else {
        add_bias(l.output, l.biases, l.batch, l.n, l.out_h*l.out_w);
    }

    activate_array(l.output, l.outputs*l.batch, l.activation);
    if(l.binary || l.xnor) swap_binary(&l);
}
