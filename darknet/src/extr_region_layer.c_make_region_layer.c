
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int batch; int h; int w; int c; int out_w; int out_h; int out_c; int classes; int coords; double* biases; int outputs; int inputs; int truths; void* delta; void* delta_gpu; void* output; void* output_gpu; int backward_gpu; int forward_gpu; int backward; int forward; void* bias_updates; void* cost; int type; int member_0; } ;
typedef TYPE_1__ layer ;


 int REGION ;
 int backward_region_layer ;
 int backward_region_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (void*,int) ;
 int forward_region_layer ;
 int forward_region_layer_gpu ;
 int fprintf (int ,char*) ;
 int srand (int ) ;
 int stderr ;

layer make_region_layer(int batch, int w, int h, int n, int classes, int coords)
{
    layer l = {0};
    l.type = REGION;

    l.n = n;
    l.batch = batch;
    l.h = h;
    l.w = w;
    l.c = n*(classes + coords + 1);
    l.out_w = l.w;
    l.out_h = l.h;
    l.out_c = l.c;
    l.classes = classes;
    l.coords = coords;
    l.cost = calloc(1, sizeof(float));
    l.biases = calloc(n*2, sizeof(float));
    l.bias_updates = calloc(n*2, sizeof(float));
    l.outputs = h*w*n*(classes + coords + 1);
    l.inputs = l.outputs;
    l.truths = 30*(l.coords + 1);
    l.delta = calloc(batch*l.outputs, sizeof(float));
    l.output = calloc(batch*l.outputs, sizeof(float));
    int i;
    for(i = 0; i < n*2; ++i){
        l.biases[i] = .5;
    }

    l.forward = forward_region_layer;
    l.backward = backward_region_layer;







    fprintf(stderr, "detection\n");
    srand(0);

    return l;
}
