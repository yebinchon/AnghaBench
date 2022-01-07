
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; TYPE_2__* layers; } ;
typedef TYPE_1__ network ;
struct TYPE_5__ {int outputs; scalar_t__ h_gpu; scalar_t__ state_gpu; } ;
typedef TYPE_2__ layer ;


 int fill_gpu (int,int ,scalar_t__,int) ;

void reset_network_state(network *net, int b)
{
    int i;
    for (i = 0; i < net->n; ++i) {
    }
}
