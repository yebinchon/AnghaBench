
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n; TYPE_1__* layers; } ;
typedef TYPE_2__ network ;
struct TYPE_4__ {scalar_t__ type; float alpha; float beta; } ;


 scalar_t__ SHORTCUT ;

void set_network_alpha_beta(network *net, float alpha, float beta)
{
    int i;
    for(i = 0; i < net->n; ++i){
        if(net->layers[i].type == SHORTCUT){
            net->layers[i].alpha = alpha;
            net->layers[i].beta = beta;
        }
    }
}
