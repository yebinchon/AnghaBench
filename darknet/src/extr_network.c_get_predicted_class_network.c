
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outputs; int output; } ;
typedef TYPE_1__ network ;


 int max_index (int ,int ) ;

int get_predicted_class_network(network *net)
{
    return max_index(net->output, net->outputs);
}
