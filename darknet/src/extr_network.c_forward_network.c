
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ gpu_index; int n; int index; int truth; int input; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_9__ {int outputs; int batch; int output; scalar_t__ truth; int (* forward ) (TYPE_2__,TYPE_1__) ;scalar_t__ delta; } ;
typedef TYPE_2__ layer ;


 int calc_network_cost (TYPE_1__*) ;
 int fill_cpu (int,int ,scalar_t__,int) ;
 int forward_network_gpu (TYPE_1__*) ;
 int stub1 (TYPE_2__,TYPE_1__) ;

void forward_network(network *netp)
{






    network net = *netp;
    int i;
    for(i = 0; i < net.n; ++i){
        net.index = i;
        layer l = net.layers[i];
        if(l.delta){
            fill_cpu(l.outputs * l.batch, 0, l.delta, 1);
        }
        l.forward(l, net);
        net.input = l.output;
        if(l.truth) {
            net.truth = l.output;
        }
    }
    calc_network_cost(netp);
}
