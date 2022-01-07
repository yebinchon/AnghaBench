
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int network ;
struct TYPE_2__ {int outputs; } ;


 TYPE_1__ network_output_layer (int *) ;

int network_outputs(network *net)
{
    return network_output_layer(net).outputs;
}
