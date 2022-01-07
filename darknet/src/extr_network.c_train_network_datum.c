
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* seen; int batch; int train; float* cost; int subdivisions; } ;
typedef TYPE_1__ network ;


 int backward_network (TYPE_1__*) ;
 int forward_network (TYPE_1__*) ;
 int update_network (TYPE_1__*) ;

float train_network_datum(network *net)
{
    *net->seen += net->batch;
    net->train = 1;
    forward_network(net);
    backward_network(net);
    float error = *net->cost;
    if(((*net->seen)/net->batch)%net->subdivisions == 0) update_network(net);
    return error;
}
