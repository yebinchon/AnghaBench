#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int h; int w; int c; int n; int batch; int stride; int size; int pad; int out_h; int out_w; int out_c; int outputs; int inputs; float* weights; float* weight_updates; float* biases; float* bias_updates; float* output; float* delta; int workspace_size; int /*<<< orphan*/  activation; void* output_gpu; void* delta_gpu; void* bias_updates_gpu; void* biases_gpu; void* weight_updates_gpu; void* weights_gpu; int /*<<< orphan*/  update_gpu; int /*<<< orphan*/  backward_gpu; int /*<<< orphan*/  forward_gpu; int /*<<< orphan*/  update; int /*<<< orphan*/  backward; int /*<<< orphan*/  forward; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ local_layer ;
typedef  int /*<<< orphan*/  ACTIVATION ;

/* Variables and functions */
 int /*<<< orphan*/  LOCAL ; 
 int /*<<< orphan*/  backward_local_layer ; 
 int /*<<< orphan*/  backward_local_layer_gpu ; 
 void* FUNC0 (int,int) ; 
 void* FUNC1 (float*,int) ; 
 int /*<<< orphan*/  forward_local_layer ; 
 int /*<<< orphan*/  forward_local_layer_gpu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int,int) ; 
 int FUNC3 (TYPE_1__) ; 
 int FUNC4 (TYPE_1__) ; 
 float FUNC5 (int,int) ; 
 float FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  update_local_layer ; 
 int /*<<< orphan*/  update_local_layer_gpu ; 

local_layer FUNC7(int batch, int h, int w, int c, int n, int size, int stride, int pad, ACTIVATION activation)
{
    int i;
    local_layer l = {0};
    l.type = LOCAL;

    l.h = h;
    l.w = w;
    l.c = c;
    l.n = n;
    l.batch = batch;
    l.stride = stride;
    l.size = size;
    l.pad = pad;

    int out_h = FUNC3(l);
    int out_w = FUNC4(l);
    int locations = out_h*out_w;
    l.out_h = out_h;
    l.out_w = out_w;
    l.out_c = n;
    l.outputs = l.out_h * l.out_w * l.out_c;
    l.inputs = l.w * l.h * l.c;

    l.weights = FUNC0(c*n*size*size*locations, sizeof(float));
    l.weight_updates = FUNC0(c*n*size*size*locations, sizeof(float));

    l.biases = FUNC0(l.outputs, sizeof(float));
    l.bias_updates = FUNC0(l.outputs, sizeof(float));

    // float scale = 1./sqrt(size*size*c);
    float scale = FUNC6(2./(size*size*c));
    for(i = 0; i < c*n*size*size; ++i) l.weights[i] = scale*FUNC5(-1,1);

    l.output = FUNC0(l.batch*out_h * out_w * n, sizeof(float));
    l.delta  = FUNC0(l.batch*out_h * out_w * n, sizeof(float));

    l.workspace_size = out_h*out_w*size*size*c;
    
    l.forward = forward_local_layer;
    l.backward = backward_local_layer;
    l.update = update_local_layer;

#ifdef GPU
    l.forward_gpu = forward_local_layer_gpu;
    l.backward_gpu = backward_local_layer_gpu;
    l.update_gpu = update_local_layer_gpu;

    l.weights_gpu = cuda_make_array(l.weights, c*n*size*size*locations);
    l.weight_updates_gpu = cuda_make_array(l.weight_updates, c*n*size*size*locations);

    l.biases_gpu = cuda_make_array(l.biases, l.outputs);
    l.bias_updates_gpu = cuda_make_array(l.bias_updates, l.outputs);

    l.delta_gpu = cuda_make_array(l.delta, l.batch*out_h*out_w*n);
    l.output_gpu = cuda_make_array(l.output, l.batch*out_h*out_w*n);

#endif
    l.activation = activation;

    FUNC2(stderr, "Local Layer: %d x %d x %d image, %d filters -> %d x %d x %d image\n", h,w,c,n, out_h, out_w, n);

    return l;
}