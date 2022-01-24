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
struct TYPE_3__ {int w; int out_w; int h; int out_h; int outputs; int out_c; int inputs; int batch; void* delta; void* delta_gpu; void* output; void* output_gpu; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,int) ; 
 void* FUNC3 (void*,int) ; 

void FUNC4(layer *l, int w, int h)
{
    FUNC0(l->w == l->out_w);
    FUNC0(l->h == l->out_h);
    l->w = l->out_w = w;
    l->h = l->out_h = h;
    l->outputs = w*h*l->out_c;
    l->inputs = l->outputs;
    l->delta =  FUNC3(l->delta, l->outputs*l->batch*sizeof(float));
    l->output = FUNC3(l->output, l->outputs*l->batch*sizeof(float));

#ifdef GPU
    cuda_free(l->output_gpu);
    cuda_free(l->delta_gpu);
    l->output_gpu  = cuda_make_array(l->output, l->outputs*l->batch);
    l->delta_gpu   = cuda_make_array(l->delta,  l->outputs*l->batch);
#endif
    
}