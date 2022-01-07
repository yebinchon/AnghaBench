
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; } ;
typedef TYPE_1__ network ;


 int load_weights_upto (TYPE_1__*,char*,int ,int ) ;

void load_weights(network *net, char *filename)
{
    load_weights_upto(net, filename, 0, net->n);
}
