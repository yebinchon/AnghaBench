
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_tensor_variable_t ;
typedef int ccv_nnc_tensor_variable_graph_bind_t ;
struct TYPE_4__ {int reuse_var; scalar_t__ ws; int stateful_execs; int tape; void* binds; void* vars; scalar_t__ no_grad; } ;
typedef TYPE_1__ ccv_nnc_dynamic_graph_t ;


 TYPE_1__* ccmalloc (int) ;
 void* ccv_array_new (int,int,int ) ;
 int ccv_nnc_symbolic_graph_new () ;
 int kh_init (int ) ;
 int stateful_exec ;

ccv_nnc_dynamic_graph_t* ccv_nnc_dynamic_graph_new(void)
{
 ccv_nnc_dynamic_graph_t* graph = ccmalloc(sizeof(ccv_nnc_dynamic_graph_t));
 graph->no_grad = 0;
 graph->reuse_var = -1;
 graph->vars = ccv_array_new(sizeof(ccv_nnc_tensor_variable_t), 1, 0);
 graph->binds = ccv_array_new(sizeof(ccv_nnc_tensor_variable_graph_bind_t), 1, 0);
 graph->tape = ccv_nnc_symbolic_graph_new();
 graph->stateful_execs = kh_init(stateful_exec);
 graph->ws = 0;
 return graph;
}
