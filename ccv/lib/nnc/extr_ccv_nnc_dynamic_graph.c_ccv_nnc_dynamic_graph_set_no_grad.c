
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int no_grad; } ;
typedef TYPE_1__ ccv_nnc_dynamic_graph_t ;



void ccv_nnc_dynamic_graph_set_no_grad(ccv_nnc_dynamic_graph_t* const dynamic_graph, const int no_grad)
{
 dynamic_graph->no_grad = no_grad;
}
