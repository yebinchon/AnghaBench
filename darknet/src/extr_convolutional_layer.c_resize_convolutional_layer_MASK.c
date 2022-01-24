#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int w; int h; int out_w; int out_h; int outputs; int out_c; int inputs; int c; int batch; int /*<<< orphan*/  workspace_size; void* output; void* x_norm_gpu; void* x_gpu; scalar_t__ batch_normalize; void* output_gpu; void* delta; void* delta_gpu; void* x_norm; void* x; } ;
typedef  TYPE_1__ convolutional_layer ;

/* Variables and functions */
 int FUNC0 (TYPE_1__) ; 
 int FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 void* FUNC6 (void*,int) ; 

void FUNC7(convolutional_layer *l, int w, int h)
{
    l->w = w;
    l->h = h;
    int out_w = FUNC1(*l);
    int out_h = FUNC0(*l);

    l->out_w = out_w;
    l->out_h = out_h;

    l->outputs = l->out_h * l->out_w * l->out_c;
    l->inputs = l->w * l->h * l->c;

    l->output = FUNC6(l->output, l->batch*l->outputs*sizeof(float));
    l->delta  = FUNC6(l->delta,  l->batch*l->outputs*sizeof(float));
    if(l->batch_normalize){
        l->x = FUNC6(l->x, l->batch*l->outputs*sizeof(float));
        l->x_norm  = FUNC6(l->x_norm, l->batch*l->outputs*sizeof(float));
    }

#ifdef GPU
    cuda_free(l->delta_gpu);
    cuda_free(l->output_gpu);

    l->delta_gpu =  cuda_make_array(l->delta,  l->batch*l->outputs);
    l->output_gpu = cuda_make_array(l->output, l->batch*l->outputs);

    if(l->batch_normalize){
        cuda_free(l->x_gpu);
        cuda_free(l->x_norm_gpu);

        l->x_gpu = cuda_make_array(l->output, l->batch*l->outputs);
        l->x_norm_gpu = cuda_make_array(l->output, l->batch*l->outputs);
    }
#ifdef CUDNN
    cudnn_convolutional_setup(l);
#endif
#endif
    l->workspace_size = FUNC5(*l);
}