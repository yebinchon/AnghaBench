
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int out_w; int scale; int out_h; int inputs; int c; int outputs; int out_c; int batch; int output; int output_gpu; } ;
typedef TYPE_1__ layer ;


 int cuda_free (int ) ;
 int cuda_make_array (int ,int) ;
 int realloc (int ,int) ;

void resize_crop_layer(layer *l, int w, int h)
{
    l->w = w;
    l->h = h;

    l->out_w = l->scale*w;
    l->out_h = l->scale*h;

    l->inputs = l->w * l->h * l->c;
    l->outputs = l->out_h * l->out_w * l->out_c;

    l->output = realloc(l->output, l->batch*l->outputs*sizeof(float));




}
