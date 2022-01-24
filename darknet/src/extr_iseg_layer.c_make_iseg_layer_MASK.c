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
struct TYPE_3__ {int h; int w; int c; int out_w; int out_h; int out_c; int classes; int batch; int extra; int outputs; int inputs; int truths; void* delta; void* delta_gpu; void* output; void* output_gpu; int /*<<< orphan*/  backward_gpu; int /*<<< orphan*/  forward_gpu; int /*<<< orphan*/  backward; int /*<<< orphan*/  forward; void** sums; void* counts; void* cost; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  ISEG ; 
 int /*<<< orphan*/  backward_iseg_layer ; 
 int /*<<< orphan*/  backward_iseg_layer_gpu ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  forward_iseg_layer ; 
 int /*<<< orphan*/  forward_iseg_layer_gpu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

layer FUNC4(int batch, int w, int h, int classes, int ids)
{
    layer l = {0};
    l.type = ISEG;

    l.h = h;
    l.w = w;
    l.c = classes + ids;
    l.out_w = l.w;
    l.out_h = l.h;
    l.out_c = l.c;
    l.classes = classes;
    l.batch = batch;
    l.extra = ids;
    l.cost = FUNC0(1, sizeof(float));
    l.outputs = h*w*l.c;
    l.inputs = l.outputs;
    l.truths = 90*(l.w*l.h+1);
    l.delta = FUNC0(batch*l.outputs, sizeof(float));
    l.output = FUNC0(batch*l.outputs, sizeof(float));

    l.counts = FUNC0(90, sizeof(int));
    l.sums = FUNC0(90, sizeof(float*));
    if(ids){
        int i;
        for(i = 0; i < 90; ++i){
            l.sums[i] = FUNC0(ids, sizeof(float));
        }
    }

    l.forward = forward_iseg_layer;
    l.backward = backward_iseg_layer;
#ifdef GPU
    l.forward_gpu = forward_iseg_layer_gpu;
    l.backward_gpu = backward_iseg_layer_gpu;
    l.output_gpu = cuda_make_array(l.output, batch*l.outputs);
    l.delta_gpu = cuda_make_array(l.delta, batch*l.outputs);
#endif

    FUNC2(stderr, "iseg\n");
    FUNC3(0);

    return l;
}