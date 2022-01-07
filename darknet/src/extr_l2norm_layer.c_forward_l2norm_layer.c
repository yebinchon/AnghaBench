
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int input; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int out_w; int out_h; int out_c; int scales; int output; } ;
typedef TYPE_2__ layer ;


 int copy_cpu (int,int ,int,int ,int) ;
 int l2normalize_cpu (int ,int ,int,int ,int) ;

void forward_l2norm_layer(const layer l, network net)
{
    copy_cpu(l.outputs*l.batch, net.input, 1, l.output, 1);
    l2normalize_cpu(l.output, l.scales, l.batch, l.out_c, l.out_w*l.out_h);
}
