
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int input; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int output; int scale; int stride; int c; int h; int w; int out_h; int out_w; scalar_t__ reverse; } ;
typedef TYPE_2__ layer ;


 int fill_cpu (int,int ,int ,int) ;
 int upsample_cpu (int ,int ,int ,int ,int,int ,int,int ,int ) ;

void forward_upsample_layer(const layer l, network net)
{
    fill_cpu(l.outputs*l.batch, 0, l.output, 1);
    if(l.reverse){
        upsample_cpu(l.output, l.out_w, l.out_h, l.c, l.batch, l.stride, 0, l.scale, net.input);
    }else{
        upsample_cpu(net.input, l.w, l.h, l.c, l.batch, l.stride, 1, l.scale, l.output);
    }
}
