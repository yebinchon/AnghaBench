
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ input; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int w; int h; int inputs; scalar_t__ output; int stride; int c; scalar_t__ reverse; scalar_t__ extra; scalar_t__ flatten; } ;
typedef TYPE_2__ layer ;


 int copy_cpu (int,scalar_t__,int,scalar_t__,int) ;
 int flatten (scalar_t__,int,int ,int,int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int reorg_cpu (scalar_t__,int,int,int ,int,int ,int,scalar_t__) ;

void forward_reorg_layer(const layer l, network net)
{
    int i;
    if(l.flatten){
        memcpy(l.output, net.input, l.outputs*l.batch*sizeof(float));
        if(l.reverse){
            flatten(l.output, l.w*l.h, l.c, l.batch, 0);
        }else{
            flatten(l.output, l.w*l.h, l.c, l.batch, 1);
        }
    } else if (l.extra) {
        for(i = 0; i < l.batch; ++i){
            copy_cpu(l.inputs, net.input + i*l.inputs, 1, l.output + i*l.outputs, 1);
        }
    } else if (l.reverse){
        reorg_cpu(net.input, l.w, l.h, l.c, l.batch, l.stride, 1, l.output);
    } else {
        reorg_cpu(net.input, l.w, l.h, l.c, l.batch, l.stride, 0, l.output);
    }
}
