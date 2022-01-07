
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ccv_nnc_tensor_variable_s {int dummy; } ;
typedef TYPE_1__* ccv_nnc_tensor_variable_t ;
typedef int ccv_nnc_tensor_param_t ;
typedef int ccv_nnc_dynamic_graph_t ;
struct TYPE_5__ {int type; } ;


 int CCV_NNC_TENSOR_CONSTANT ;
 int _ccv_nnc_tensor_variable_init (int * const,TYPE_1__*,int const) ;
 TYPE_1__* ccmalloc (int) ;

ccv_nnc_tensor_variable_t ccv_nnc_tensor_constant_new_impl(ccv_nnc_dynamic_graph_t* const graph, const ccv_nnc_tensor_param_t info)
{
 ccv_nnc_tensor_variable_t tensor_variable = ccmalloc(sizeof(struct ccv_nnc_tensor_variable_s));
 tensor_variable->type = CCV_NNC_TENSOR_CONSTANT;
 _ccv_nnc_tensor_variable_init(graph, tensor_variable, info);
 return tensor_variable;
}
