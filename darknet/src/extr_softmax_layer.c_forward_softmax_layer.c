
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int batch; int inputs; int groups; int loss; int * cost; int delta; scalar_t__ output; int noloss; int temperature; TYPE_1__* softmax_tree; } ;
typedef TYPE_2__ softmax_layer ;
struct TYPE_8__ {scalar_t__ truth; scalar_t__ input; } ;
typedef TYPE_3__ network ;
struct TYPE_6__ {int groups; int* group_size; } ;


 int softmax_cpu (scalar_t__,int,int,int,int,int,int,int ,scalar_t__) ;
 int softmax_x_ent_cpu (int,scalar_t__,scalar_t__,int ,int ) ;
 int sum_array (int ,int) ;

void forward_softmax_layer(const softmax_layer l, network net)
{
    if(l.softmax_tree){
        int i;
        int count = 0;
        for (i = 0; i < l.softmax_tree->groups; ++i) {
            int group_size = l.softmax_tree->group_size[i];
            softmax_cpu(net.input + count, group_size, l.batch, l.inputs, 1, 0, 1, l.temperature, l.output + count);
            count += group_size;
        }
    } else {
        softmax_cpu(net.input, l.inputs/l.groups, l.batch, l.inputs, l.groups, l.inputs/l.groups, 1, l.temperature, l.output);
    }

    if(net.truth && !l.noloss){
        softmax_x_ent_cpu(l.batch*l.inputs, l.output, net.truth, l.delta, l.loss);
        l.cost[0] = sum_array(l.loss, l.batch*l.inputs);
    }
}
