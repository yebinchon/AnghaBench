
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int inputs; int batch; int delta; } ;
typedef TYPE_1__ softmax_layer ;
struct TYPE_6__ {int delta; } ;
typedef TYPE_2__ network ;


 int axpy_cpu (int,int,int ,int,int ,int) ;

void backward_softmax_layer(const softmax_layer l, network net)
{
    axpy_cpu(l.inputs*l.batch, 1, l.delta, 1, net.delta, 1);
}
