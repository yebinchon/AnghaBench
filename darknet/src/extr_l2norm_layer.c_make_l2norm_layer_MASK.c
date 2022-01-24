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
struct TYPE_3__ {int batch; int inputs; int outputs; void* delta; void* delta_gpu; void* output; void* scales_gpu; void* output_gpu; int /*<<< orphan*/  backward_gpu; int /*<<< orphan*/  forward_gpu; int /*<<< orphan*/  backward; int /*<<< orphan*/  forward; void* scales; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  L2NORM ; 
 int /*<<< orphan*/  backward_l2norm_layer ; 
 int /*<<< orphan*/  backward_l2norm_layer_gpu ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  forward_l2norm_layer ; 
 int /*<<< orphan*/  forward_l2norm_layer_gpu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

layer FUNC3(int batch, int inputs)
{
    FUNC2(stderr, "l2norm                                         %4d\n",  inputs);
    layer l = {0};
    l.type = L2NORM;
    l.batch = batch;
    l.inputs = inputs;
    l.outputs = inputs;
    l.output = FUNC0(inputs*batch, sizeof(float));
    l.scales = FUNC0(inputs*batch, sizeof(float));
    l.delta = FUNC0(inputs*batch, sizeof(float));

    l.forward = forward_l2norm_layer;
    l.backward = backward_l2norm_layer;
    #ifdef GPU
    l.forward_gpu = forward_l2norm_layer_gpu;
    l.backward_gpu = backward_l2norm_layer_gpu;

    l.output_gpu = cuda_make_array(l.output, inputs*batch); 
    l.scales_gpu = cuda_make_array(l.output, inputs*batch); 
    l.delta_gpu = cuda_make_array(l.delta, inputs*batch); 
    #endif
    return l;
}