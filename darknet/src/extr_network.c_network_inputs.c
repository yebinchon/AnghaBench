
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* layers; } ;
typedef TYPE_2__ network ;
struct TYPE_4__ {int inputs; } ;



int network_inputs(network *net)
{
    return net->layers[0].inputs;
}
