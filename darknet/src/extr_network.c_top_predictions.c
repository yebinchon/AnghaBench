
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int outputs; int output; } ;
typedef TYPE_1__ network ;


 int top_k (int ,int ,int,int*) ;

void top_predictions(network *net, int k, int *index)
{
    top_k(net->output, net->outputs, k, index);
}
