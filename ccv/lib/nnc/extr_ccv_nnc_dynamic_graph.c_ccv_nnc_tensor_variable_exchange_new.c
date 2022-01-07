
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ d; } ;
struct ccv_nnc_tensor_variable_s {scalar_t__ alias_ref; int index; TYPE_1__ symbol; int info; int inc; int ofs; } ;
typedef struct ccv_nnc_tensor_variable_s* ccv_nnc_tensor_variable_t ;
struct TYPE_8__ {int index; } ;
typedef TYPE_2__ ccv_nnc_tensor_variable_graph_bind_t ;
struct TYPE_9__ {int binds; int vars; } ;
typedef TYPE_3__ ccv_nnc_dynamic_graph_t ;


 scalar_t__ CCV_NNC_NO_TENSOR_SYMBOL ;
 scalar_t__ ccv_array_get (int ,scalar_t__) ;
 struct ccv_nnc_tensor_variable_s* ccv_nnc_tensor_variable_alias_new (TYPE_3__* const,struct ccv_nnc_tensor_variable_s*,int ,int ,int ) ;
 struct ccv_nnc_tensor_variable_s* ccv_nnc_tensor_variable_new (TYPE_3__* const,int ) ;

ccv_nnc_tensor_variable_t ccv_nnc_tensor_variable_exchange_new(ccv_nnc_dynamic_graph_t* const graph, ccv_nnc_tensor_variable_t tensor_variable)
{
 struct ccv_nnc_tensor_variable_s x = *tensor_variable;
 ccv_nnc_tensor_variable_t new_variable;

 if (x.alias_ref)
  new_variable = ccv_nnc_tensor_variable_alias_new(graph, *(ccv_nnc_tensor_variable_t*)ccv_array_get(graph->vars, x.alias_ref - 1), x.ofs, x.inc, x.info);
 else
  new_variable = ccv_nnc_tensor_variable_new(graph, x.info);
 *tensor_variable = *new_variable;
 *new_variable = x;

 const int index = new_variable->index;
 new_variable->index = tensor_variable->index;
 if (new_variable->symbol.d != CCV_NNC_NO_TENSOR_SYMBOL)
 {
  ccv_nnc_tensor_variable_graph_bind_t* const bind = (ccv_nnc_tensor_variable_graph_bind_t*)ccv_array_get(graph->binds, new_variable->symbol.d);
  bind->index = new_variable->index;
 }
 tensor_variable->index = index;
 return new_variable;
}
