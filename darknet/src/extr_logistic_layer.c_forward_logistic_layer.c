
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ truth; int input; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {int outputs; int batch; int inputs; int loss; int * cost; int delta; int output; } ;
typedef TYPE_2__ layer ;


 int LOGISTIC ;
 int activate_array (int ,int,int ) ;
 int copy_cpu (int,int ,int,int ,int) ;
 int logistic_x_ent_cpu (int,int ,scalar_t__,int ,int ) ;
 int sum_array (int ,int) ;

void forward_logistic_layer(const layer l, network net)
{
    copy_cpu(l.outputs*l.batch, net.input, 1, l.output, 1);
    activate_array(l.output, l.outputs*l.batch, LOGISTIC);
    if(net.truth){
        logistic_x_ent_cpu(l.batch*l.inputs, l.output, net.truth, l.delta, l.loss);
        l.cost[0] = sum_array(l.loss, l.batch*l.inputs);
    }
}
