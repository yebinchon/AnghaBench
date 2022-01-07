
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; void* cost; void* t; void* seen; void* layers; } ;
typedef TYPE_1__ network ;
typedef int layer ;


 void* calloc (int,int) ;

network *make_network(int n)
{
    network *net = calloc(1, sizeof(network));
    net->n = n;
    net->layers = calloc(net->n, sizeof(layer));
    net->seen = calloc(1, sizeof(size_t));
    net->t = calloc(1, sizeof(int));
    net->cost = calloc(1, sizeof(float));
    return net;
}
