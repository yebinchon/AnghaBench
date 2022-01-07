
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int n; int inputs; int w; int h; int delta; int input; scalar_t__ delta_gpu; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_21__ {int outputs; int delta; int output; scalar_t__ delta_gpu; int output_gpu; } ;
typedef TYPE_2__ layer ;
struct TYPE_22__ {float w; float h; int c; int data; } ;
typedef TYPE_3__ image ;


 int axpy_cpu (int,float,int ,int,int ,int) ;
 int backward_network (TYPE_1__*) ;
 int backward_network_gpu (TYPE_1__*) ;
 int calculate_loss (int ,int ,int,float) ;
 int constrain_image (TYPE_3__) ;
 int copy_cpu (int,int ,int,int ,int) ;
 int copy_gpu (int,int ,int,scalar_t__,int) ;
 TYPE_3__ crop_image (TYPE_3__,int,int,float,float) ;
 int cuda_free (scalar_t__) ;
 scalar_t__ cuda_make_array (int ,int) ;
 int cuda_pull_array (scalar_t__,int ,int) ;
 int cuda_push_array (scalar_t__,int ,int) ;
 int fill_image (TYPE_3__,double) ;
 int flip_image (TYPE_3__) ;
 int forward_network (TYPE_1__*) ;
 int forward_network_gpu (TYPE_1__*) ;
 int free_image (TYPE_3__) ;
 TYPE_3__ make_image (float,float,int) ;
 int normalize_array (int ,int) ;
 int printf (char*,int,int,int,int,int,int) ;
 int rand () ;
 TYPE_3__ resize_image (TYPE_3__,int,int) ;
 int resize_network (TYPE_1__*,float,float) ;

void optimize_picture(network *net, image orig, int max_layer, float scale, float rate, float thresh, int norm)
{


    net->n = max_layer + 1;

    int dx = rand()%16 - 8;
    int dy = rand()%16 - 8;
    int flip = rand()%2;

    image crop = crop_image(orig, dx, dy, orig.w, orig.h);
    image im = resize_image(crop, (int)(orig.w * scale), (int)(orig.h * scale));
    if(flip) flip_image(im);

    resize_network(net, im.w, im.h);
    layer last = net->layers[net->n-1];


    image delta = make_image(im.w, im.h, im.c);
    printf("\nnet: %d %d %d im: %d %d %d\n", net->w, net->h, net->inputs, im.w, im.h, im.c);
    copy_cpu(net->inputs, im.data, 1, net->input, 1);
    net->delta = delta.data;
    forward_network(net);
    copy_cpu(last.outputs, last.output, 1, last.delta, 1);
    calculate_loss(last.output, last.delta, last.outputs, thresh);
    backward_network(net);


    if(flip) flip_image(delta);

    image resized = resize_image(delta, orig.w, orig.h);
    image out = crop_image(resized, -dx, -dy, orig.w, orig.h);
    image gray = make_image(out.w, out.h, out.c);
    fill_image(gray, .5);
    axpy_cpu(orig.w*orig.h*orig.c, -1, orig.data, 1, gray.data, 1);
    axpy_cpu(orig.w*orig.h*orig.c, .1, gray.data, 1, out.data, 1);

    if(norm) normalize_array(out.data, out.w*out.h*out.c);
    axpy_cpu(orig.w*orig.h*orig.c, rate, out.data, 1, orig.data, 1);
    constrain_image(orig);

    free_image(crop);
    free_image(im);
    free_image(delta);
    free_image(resized);
    free_image(out);

}
