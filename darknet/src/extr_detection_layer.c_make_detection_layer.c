
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int batch; int inputs; int classes; int coords; int rescore; int side; int w; int h; int outputs; int truths; void* delta; void* delta_gpu; void* output; void* output_gpu; int backward_gpu; int forward_gpu; int backward; int forward; void* cost; int type; int member_0; } ;
typedef TYPE_1__ detection_layer ;


 int DETECTION ;
 int assert (int) ;
 int backward_detection_layer ;
 int backward_detection_layer_gpu ;
 void* calloc (int,int) ;
 void* cuda_make_array (void*,int) ;
 int forward_detection_layer ;
 int forward_detection_layer_gpu ;
 int fprintf (int ,char*) ;
 int srand (int ) ;
 int stderr ;

detection_layer make_detection_layer(int batch, int inputs, int n, int side, int classes, int coords, int rescore)
{
    detection_layer l = {0};
    l.type = DETECTION;

    l.n = n;
    l.batch = batch;
    l.inputs = inputs;
    l.classes = classes;
    l.coords = coords;
    l.rescore = rescore;
    l.side = side;
    l.w = side;
    l.h = side;
    assert(side*side*((1 + l.coords)*l.n + l.classes) == inputs);
    l.cost = calloc(1, sizeof(float));
    l.outputs = l.inputs;
    l.truths = l.side*l.side*(1+l.coords+l.classes);
    l.output = calloc(batch*l.outputs, sizeof(float));
    l.delta = calloc(batch*l.outputs, sizeof(float));

    l.forward = forward_detection_layer;
    l.backward = backward_detection_layer;







    fprintf(stderr, "Detection Layer\n");
    srand(0);

    return l;
}
