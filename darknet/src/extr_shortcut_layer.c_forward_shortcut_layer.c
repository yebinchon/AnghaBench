
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* layers; int input; } ;
typedef TYPE_2__ network ;
struct TYPE_8__ {int outputs; int batch; size_t index; int activation; int output; int beta; int alpha; int out_c; int out_h; int out_w; int c; int h; int w; } ;
typedef TYPE_3__ layer ;
struct TYPE_6__ {int output; } ;


 int activate_array (int ,int,int ) ;
 int copy_cpu (int,int ,int,int ,int) ;
 int shortcut_cpu (int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void forward_shortcut_layer(const layer l, network net)
{
    copy_cpu(l.outputs*l.batch, net.input, 1, l.output, 1);
    shortcut_cpu(l.batch, l.w, l.h, l.c, net.layers[l.index].output, l.out_w, l.out_h, l.out_c, l.alpha, l.beta, l.output);
    activate_array(l.output, l.outputs*l.batch, l.activation);
}
