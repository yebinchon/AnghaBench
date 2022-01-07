
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int exec_symbol_info; } ;
typedef TYPE_2__ ccv_nnc_symbolic_graph_t ;
struct TYPE_9__ {int d; TYPE_2__* const graph; } ;
typedef TYPE_3__ ccv_nnc_graph_exec_symbol_t ;
struct TYPE_7__ {void const* data; int expr; } ;
struct TYPE_10__ {TYPE_1__ case_of; } ;
typedef TYPE_4__ ccv_nnc_graph_exec_symbol_info_t ;
typedef int ccv_nnc_graph_case_of_f ;


 int assert (int) ;
 scalar_t__ ccv_array_get (int ,int ) ;

void ccv_nnc_symbolic_graph_set_case_of_expr(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t exec, ccv_nnc_graph_case_of_f case_of, const void* case_of_data)
{
 assert(exec.graph == graph);
 ccv_nnc_graph_exec_symbol_info_t* const symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)ccv_array_get(graph->exec_symbol_info, exec.d);
 symbol_info->case_of.expr = case_of;
 symbol_info->case_of.data = case_of_data;
}
