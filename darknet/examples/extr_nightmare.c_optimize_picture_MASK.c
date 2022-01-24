#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int n; int inputs; int w; int h; int /*<<< orphan*/  delta; int /*<<< orphan*/  input; scalar_t__ delta_gpu; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_21__ {int outputs; int /*<<< orphan*/  delta; int /*<<< orphan*/  output; scalar_t__ delta_gpu; int /*<<< orphan*/  output_gpu; } ;
typedef  TYPE_2__ layer ;
struct TYPE_22__ {float w; float h; int c; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 TYPE_3__ FUNC7 (TYPE_3__,int,int,float,float) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__,double) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__) ; 
 TYPE_3__ FUNC17 (float,float,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int,int,int,int,int) ; 
 int FUNC20 () ; 
 TYPE_3__ FUNC21 (TYPE_3__,int,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,float,float) ; 

void FUNC23(network *net, image orig, int max_layer, float scale, float rate, float thresh, int norm)
{
    //scale_image(orig, 2);
    //translate_image(orig, -1);
    net->n = max_layer + 1;

    int dx = FUNC20()%16 - 8;
    int dy = FUNC20()%16 - 8;
    int flip = FUNC20()%2;

    image crop = FUNC7(orig, dx, dy, orig.w, orig.h);
    image im = FUNC21(crop, (int)(orig.w * scale), (int)(orig.h * scale));
    if(flip) FUNC13(im);

    FUNC22(net, im.w, im.h);
    layer last = net->layers[net->n-1];
    //net->layers[net->n - 1].activation = LINEAR;

    image delta = FUNC17(im.w, im.h, im.c);

#ifdef GPU
    net->delta_gpu = cuda_make_array(delta.data, im.w*im.h*im.c);
    copy_cpu(net->inputs, im.data, 1, net->input, 1);

    forward_network_gpu(net);
    copy_gpu(last.outputs, last.output_gpu, 1, last.delta_gpu, 1);

    cuda_pull_array(last.delta_gpu, last.delta, last.outputs);
    calculate_loss(last.delta, last.delta, last.outputs, thresh);
    cuda_push_array(last.delta_gpu, last.delta, last.outputs);

    backward_network_gpu(net);

    cuda_pull_array(net->delta_gpu, delta.data, im.w*im.h*im.c);
    cuda_free(net->delta_gpu);
    net->delta_gpu = 0;
#else
    FUNC19("\nnet: %d %d %d im: %d %d %d\n", net->w, net->h, net->inputs, im.w, im.h, im.c);
    FUNC5(net->inputs, im.data, 1, net->input, 1);
    net->delta = delta.data;
    FUNC14(net);
    FUNC5(last.outputs, last.output, 1, last.delta, 1);
    FUNC3(last.output, last.delta, last.outputs, thresh);
    FUNC1(net);
#endif

    if(flip) FUNC13(delta);
    //normalize_array(delta.data, delta.w*delta.h*delta.c);
    image resized = FUNC21(delta, orig.w, orig.h);
    image out = FUNC7(resized, -dx, -dy, orig.w, orig.h);

    /*
       image g = grayscale_image(out);
       free_image(out);
       out = g;
     */

    //rate = rate / abs_mean(out.data, out.w*out.h*out.c);
    image gray = FUNC17(out.w, out.h, out.c);
    FUNC12(gray, .5);
    FUNC0(orig.w*orig.h*orig.c, -1, orig.data, 1, gray.data, 1);
    FUNC0(orig.w*orig.h*orig.c, .1, gray.data, 1, out.data, 1);

    if(norm) FUNC18(out.data, out.w*out.h*out.c);
    FUNC0(orig.w*orig.h*orig.c, rate, out.data, 1, orig.data, 1);

    /*
       normalize_array(orig.data, orig.w*orig.h*orig.c);
       scale_image(orig, sqrt(var));
       translate_image(orig, mean);
     */

    //translate_image(orig, 1);
    //scale_image(orig, .5);
    //normalize_image(orig);

    FUNC4(orig);

    FUNC16(crop);
    FUNC16(im);
    FUNC16(delta);
    FUNC16(resized);
    FUNC16(out);

}