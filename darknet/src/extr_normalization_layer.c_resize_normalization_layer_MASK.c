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
struct TYPE_3__ {int c; int batch; int h; int w; int out_h; int out_w; int inputs; int outputs; void* norms; void* norms_gpu; void* squared; void* squared_gpu; void* delta; void* delta_gpu; void* output; void* output_gpu; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*,int) ; 
 void* FUNC2 (void*,int) ; 

void FUNC3(layer *layer, int w, int h)
{
    int c = layer->c;
    int batch = layer->batch;
    layer->h = h;
    layer->w = w;
    layer->out_h = h;
    layer->out_w = w;
    layer->inputs = w*h*c;
    layer->outputs = layer->inputs;
    layer->output = FUNC2(layer->output, h * w * c * batch * sizeof(float));
    layer->delta = FUNC2(layer->delta, h * w * c * batch * sizeof(float));
    layer->squared = FUNC2(layer->squared, h * w * c * batch * sizeof(float));
    layer->norms = FUNC2(layer->norms, h * w * c * batch * sizeof(float));
#ifdef GPU
    cuda_free(layer->output_gpu);
    cuda_free(layer->delta_gpu); 
    cuda_free(layer->squared_gpu); 
    cuda_free(layer->norms_gpu);   
    layer->output_gpu =  cuda_make_array(layer->output, h * w * c * batch);
    layer->delta_gpu =   cuda_make_array(layer->delta, h * w * c * batch);
    layer->squared_gpu = cuda_make_array(layer->squared, h * w * c * batch);
    layer->norms_gpu =   cuda_make_array(layer->norms, h * w * c * batch);
#endif
}