#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int n; int batch; int inputs; int classes; int coords; int rescore; int side; int w; int h; int outputs; int truths; void* delta; void* delta_gpu; void* output; void* output_gpu; int /*<<< orphan*/  backward_gpu; int /*<<< orphan*/  forward_gpu; int /*<<< orphan*/  backward; int /*<<< orphan*/  forward; void* cost; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ detection_layer ;

/* Variables and functions */
 int /*<<< orphan*/  DETECTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  backward_detection_layer ; 
 int /*<<< orphan*/  backward_detection_layer_gpu ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (void*,int) ; 
 int /*<<< orphan*/  forward_detection_layer ; 
 int /*<<< orphan*/  forward_detection_layer_gpu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

detection_layer FUNC5(int batch, int inputs, int n, int side, int classes, int coords, int rescore)
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
    FUNC0(side*side*((1 + l.coords)*l.n + l.classes) == inputs);
    l.cost = FUNC1(1, sizeof(float));
    l.outputs = l.inputs;
    l.truths = l.side*l.side*(1+l.coords+l.classes);
    l.output = FUNC1(batch*l.outputs, sizeof(float));
    l.delta = FUNC1(batch*l.outputs, sizeof(float));

    l.forward = forward_detection_layer;
    l.backward = backward_detection_layer;
#ifdef GPU
    l.forward_gpu = forward_detection_layer_gpu;
    l.backward_gpu = backward_detection_layer_gpu;
    l.output_gpu = cuda_make_array(l.output, batch*l.outputs);
    l.delta_gpu = cuda_make_array(l.delta, batch*l.outputs);
#endif

    FUNC3(stderr, "Detection Layer\n");
    FUNC4(0);

    return l;
}