
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_tensor_view_t ;
typedef TYPE_1__* ccv_nnc_tensor_variable_t ;
struct TYPE_6__ {int info; } ;
typedef TYPE_2__ ccv_nnc_tensor_t ;
typedef int ccv_nnc_dynamic_graph_t ;
struct TYPE_5__ {int * tensor_view; int info; int alias_ref; } ;


 int assert (int) ;

void ccv_nnc_tensor_variable_set(ccv_nnc_dynamic_graph_t* const graph, const ccv_nnc_tensor_variable_t tensor_variable, ccv_nnc_tensor_t* const tensor)
{
 assert(!tensor_variable->tensor_view);
 assert(!tensor_variable->alias_ref);
 tensor_variable->info = tensor->info;
 tensor_variable->tensor_view = (ccv_nnc_tensor_view_t*)((uintptr_t)tensor | 1);
}
