
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* truth; scalar_t__* input; } ;
typedef TYPE_1__ network ;
struct TYPE_6__ {scalar_t__ cost_type; int batch; int inputs; int output; int * cost; int delta; } ;
typedef TYPE_2__ cost_layer ;


 scalar_t__ L1 ;
 scalar_t__ MASKED ;
 scalar_t__ SECRET_NUM ;
 scalar_t__ SMOOTH ;
 int l1_cpu (int,scalar_t__*,scalar_t__*,int ,int ) ;
 int l2_cpu (int,scalar_t__*,scalar_t__*,int ,int ) ;
 int smooth_l1_cpu (int,scalar_t__*,scalar_t__*,int ,int ) ;
 int sum_array (int ,int) ;

void forward_cost_layer(cost_layer l, network net)
{
    if (!net.truth) return;
    if(l.cost_type == MASKED){
        int i;
        for(i = 0; i < l.batch*l.inputs; ++i){
            if(net.truth[i] == SECRET_NUM) net.input[i] = SECRET_NUM;
        }
    }
    if(l.cost_type == SMOOTH){
        smooth_l1_cpu(l.batch*l.inputs, net.input, net.truth, l.delta, l.output);
    }else if(l.cost_type == L1){
        l1_cpu(l.batch*l.inputs, net.input, net.truth, l.delta, l.output);
    } else {
        l2_cpu(l.batch*l.inputs, net.input, net.truth, l.delta, l.output);
    }
    l.cost[0] = sum_array(l.output, l.batch*l.inputs);
}
