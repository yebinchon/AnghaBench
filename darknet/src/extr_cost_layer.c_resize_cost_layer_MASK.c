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
struct TYPE_3__ {int inputs; int outputs; int batch; void* output; void* output_gpu; void* delta; void* delta_gpu; } ;
typedef  TYPE_1__ cost_layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int) ; 
 void* FUNC2 (void*,int) ; 

void FUNC3(cost_layer *l, int inputs)
{
    l->inputs = inputs;
    l->outputs = inputs;
    l->delta = FUNC2(l->delta, inputs*l->batch*sizeof(float));
    l->output = FUNC2(l->output, inputs*l->batch*sizeof(float));
#ifdef GPU
    cuda_free(l->delta_gpu);
    cuda_free(l->output_gpu);
    l->delta_gpu = cuda_make_array(l->delta, inputs*l->batch);
    l->output_gpu = cuda_make_array(l->output, inputs*l->batch);
#endif
}