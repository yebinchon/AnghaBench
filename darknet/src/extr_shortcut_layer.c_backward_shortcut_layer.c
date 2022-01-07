
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* layers; int delta; } ;
typedef TYPE_2__ network ;
struct TYPE_8__ {int outputs; int batch; size_t index; int beta; int c; int h; int w; int delta; int out_c; int out_h; int out_w; int alpha; int activation; int output; } ;
typedef TYPE_3__ layer ;
struct TYPE_6__ {int delta; } ;


 int axpy_cpu (int,int ,int ,int,int ,int) ;
 int gradient_array (int ,int,int ,int ) ;
 int shortcut_cpu (int,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;

void backward_shortcut_layer(const layer l, network net)
{
    gradient_array(l.output, l.outputs*l.batch, l.activation, l.delta);
    axpy_cpu(l.outputs*l.batch, l.alpha, l.delta, 1, net.delta, 1);
    shortcut_cpu(l.batch, l.out_w, l.out_h, l.out_c, l.delta, l.w, l.h, l.c, 1, l.beta, net.layers[l.index].delta);
}
