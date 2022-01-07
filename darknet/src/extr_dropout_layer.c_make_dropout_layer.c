
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float probability; int inputs; int outputs; int batch; int scale; int rand; int rand_gpu; int backward_gpu; int forward_gpu; int backward; int forward; int type; int member_0; } ;
typedef TYPE_1__ dropout_layer ;


 int DROPOUT ;
 int backward_dropout_layer ;
 int backward_dropout_layer_gpu ;
 int calloc (int,int) ;
 int cuda_make_array (int ,int) ;
 int forward_dropout_layer ;
 int forward_dropout_layer_gpu ;
 int fprintf (int ,char*,float,int,int) ;
 int stderr ;

dropout_layer make_dropout_layer(int batch, int inputs, float probability)
{
    dropout_layer l = {0};
    l.type = DROPOUT;
    l.probability = probability;
    l.inputs = inputs;
    l.outputs = inputs;
    l.batch = batch;
    l.rand = calloc(inputs*batch, sizeof(float));
    l.scale = 1./(1.-probability);
    l.forward = forward_dropout_layer;
    l.backward = backward_dropout_layer;





    fprintf(stderr, "dropout       p = %.2f               %4d  ->  %4d\n", probability, inputs, inputs);
    return l;
}
