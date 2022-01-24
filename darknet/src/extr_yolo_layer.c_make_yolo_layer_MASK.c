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
struct TYPE_3__ {int n; int total; int batch; int h; int w; int c; int out_w; int out_h; int out_c; int classes; double* biases; int* mask; int outputs; int inputs; int truths; void* delta; void* delta_gpu; void* output; void* output_gpu; int /*<<< orphan*/  backward_gpu; int /*<<< orphan*/  forward_gpu; int /*<<< orphan*/  backward; int /*<<< orphan*/  forward; void* bias_updates; void* cost; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  YOLO ; 
 int /*<<< orphan*/  backward_yolo_layer ; 
 int /*<<< orphan*/  backward_yolo_layer_gpu ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  forward_yolo_layer ; 
 int /*<<< orphan*/  forward_yolo_layer_gpu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

layer FUNC4(int batch, int w, int h, int n, int total, int *mask, int classes)
{
    int i;
    layer l = {0};
    l.type = YOLO;

    l.n = n;
    l.total = total;
    l.batch = batch;
    l.h = h;
    l.w = w;
    l.c = n*(classes + 4 + 1);
    l.out_w = l.w;
    l.out_h = l.h;
    l.out_c = l.c;
    l.classes = classes;
    l.cost = FUNC0(1, sizeof(float));
    l.biases = FUNC0(total*2, sizeof(float));
    if(mask) l.mask = mask;
    else{
        l.mask = FUNC0(n, sizeof(int));
        for(i = 0; i < n; ++i){
            l.mask[i] = i;
        }
    }
    l.bias_updates = FUNC0(n*2, sizeof(float));
    l.outputs = h*w*n*(classes + 4 + 1);
    l.inputs = l.outputs;
    l.truths = 90*(4 + 1);
    l.delta = FUNC0(batch*l.outputs, sizeof(float));
    l.output = FUNC0(batch*l.outputs, sizeof(float));
    for(i = 0; i < total*2; ++i){
        l.biases[i] = .5;
    }

    l.forward = forward_yolo_layer;
    l.backward = backward_yolo_layer;
#ifdef GPU
    l.forward_gpu = forward_yolo_layer_gpu;
    l.backward_gpu = backward_yolo_layer_gpu;
    l.output_gpu = cuda_make_array(l.output, batch*l.outputs);
    l.delta_gpu = cuda_make_array(l.delta, batch*l.outputs);
#endif

    FUNC2(stderr, "yolo\n");
    FUNC3(0);

    return l;
}