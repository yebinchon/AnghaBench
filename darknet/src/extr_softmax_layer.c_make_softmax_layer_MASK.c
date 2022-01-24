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
struct TYPE_3__ {int batch; int groups; int inputs; int outputs; void* delta; void* delta_gpu; void* loss; void* loss_gpu; void* output; void* output_gpu; int /*<<< orphan*/  backward_gpu; int /*<<< orphan*/  forward_gpu; int /*<<< orphan*/  backward; int /*<<< orphan*/  forward; void* cost; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ softmax_layer ;

/* Variables and functions */
 int /*<<< orphan*/  SOFTMAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  backward_softmax_layer ; 
 int /*<<< orphan*/  backward_softmax_layer_gpu ; 
 void* FUNC1 (int,int) ; 
 void* FUNC2 (void*,int) ; 
 int /*<<< orphan*/  forward_softmax_layer ; 
 int /*<<< orphan*/  forward_softmax_layer_gpu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

softmax_layer FUNC4(int batch, int inputs, int groups)
{
    FUNC0(inputs%groups == 0);
    FUNC3(stderr, "softmax                                        %4d\n",  inputs);
    softmax_layer l = {0};
    l.type = SOFTMAX;
    l.batch = batch;
    l.groups = groups;
    l.inputs = inputs;
    l.outputs = inputs;
    l.loss = FUNC1(inputs*batch, sizeof(float));
    l.output = FUNC1(inputs*batch, sizeof(float));
    l.delta = FUNC1(inputs*batch, sizeof(float));
    l.cost = FUNC1(1, sizeof(float));

    l.forward = forward_softmax_layer;
    l.backward = backward_softmax_layer;
    #ifdef GPU
    l.forward_gpu = forward_softmax_layer_gpu;
    l.backward_gpu = backward_softmax_layer_gpu;

    l.output_gpu = cuda_make_array(l.output, inputs*batch); 
    l.loss_gpu = cuda_make_array(l.loss, inputs*batch); 
    l.delta_gpu = cuda_make_array(l.delta, inputs*batch); 
    #endif
    return l;
}