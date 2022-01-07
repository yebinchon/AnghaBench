
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ gpu_index; int n; int index; int delta; int input; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_8__ {int (* backward ) (TYPE_2__,TYPE_1__) ;int delta; int output; scalar_t__ stopbackward; } ;
typedef TYPE_2__ layer ;


 int backward_network_gpu (TYPE_1__*) ;
 int stub1 (TYPE_2__,TYPE_1__) ;

void backward_network(network *netp)
{






    network net = *netp;
    int i;
    network orig = net;
    for(i = net.n-1; i >= 0; --i){
        layer l = net.layers[i];
        if(l.stopbackward) break;
        if(i == 0){
            net = orig;
        }else{
            layer prev = net.layers[i-1];
            net.input = prev.output;
            net.delta = prev.delta;
        }
        net.index = i;
        l.backward(l, net);
    }
}
