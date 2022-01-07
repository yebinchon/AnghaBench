
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int input; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int activation; int output; } ;
typedef TYPE_2__ layer ;


 int activate_array (int ,int,int ) ;
 int copy_cpu (int,int ,int,int ,int) ;

void forward_activation_layer(layer l, network net)
{
    copy_cpu(l.outputs*l.batch, net.input, 1, l.output, 1);
    activate_array(l.output, l.outputs*l.batch, l.activation);
}
