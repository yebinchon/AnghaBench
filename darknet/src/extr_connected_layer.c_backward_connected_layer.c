
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float* input; float* delta; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int outputs; int batch; float* delta; int inputs; float* weight_updates; float* weights; int bias_updates; scalar_t__ batch_normalize; int activation; int output; } ;
typedef TYPE_2__ layer ;


 int backward_batchnorm_layer (TYPE_2__,TYPE_1__) ;
 int backward_bias (int ,float*,int,int,int) ;
 int gemm (int,int ,int,int,int,int,float*,int,float*,int,int,float*,int) ;
 int gradient_array (int ,int,int ,float*) ;

void backward_connected_layer(layer l, network net)
{
    gradient_array(l.output, l.outputs*l.batch, l.activation, l.delta);

    if(l.batch_normalize){
        backward_batchnorm_layer(l, net);
    } else {
        backward_bias(l.bias_updates, l.delta, l.batch, l.outputs, 1);
    }

    int m = l.outputs;
    int k = l.batch;
    int n = l.inputs;
    float *a = l.delta;
    float *b = net.input;
    float *c = l.weight_updates;
    gemm(1,0,m,n,k,1,a,m,b,n,1,c,n);

    m = l.batch;
    k = l.outputs;
    n = l.inputs;

    a = l.delta;
    b = l.weights;
    c = net.delta;

    if(c) gemm(0,0,m,n,k,1,a,k,b,n,1,c,n);
}
