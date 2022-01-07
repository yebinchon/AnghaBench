
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_symbolic_graph_t ;
struct TYPE_5__ {int graph; } ;
typedef TYPE_1__ ccv_nnc_graph_exec_t ;
typedef int const ccv_nnc_graph_exec_symbol_t ;
typedef int ccv_nnc_graph_exec_arena_t ;
typedef int ccv_nnc_cmd_t ;


 int CCV_NO_GRAPH_EXEC (TYPE_1__ const) ;
 TYPE_1__ ccv_nnc_graph_exec_from_symbol (int const* const,int const) ;
 int ccv_nnc_graph_exec_set (int ,TYPE_1__ const,int const) ;
 int const ccv_nnc_graph_exec_symbol_copy (int * const,int const,int) ;

__attribute__((used)) static void _ccv_cnnp_model_graph_symbol_exec_set_for_graph_exec_arena(const ccv_nnc_graph_exec_arena_t* const graph_exec_arena, const int parallel_count, const ccv_nnc_graph_exec_symbol_t exec_symbol, const ccv_nnc_cmd_t cmd, ccv_nnc_symbolic_graph_t* const symbolic_graph)
{
 ccv_nnc_graph_exec_t const update_exec = ccv_nnc_graph_exec_from_symbol(graph_exec_arena, exec_symbol);
 if (!CCV_NO_GRAPH_EXEC(update_exec))
  ccv_nnc_graph_exec_set(update_exec.graph, update_exec, cmd);
 int i;
 for (i = 1; i < parallel_count; i++)
 {
  ccv_nnc_graph_exec_symbol_t copy_symbol = ccv_nnc_graph_exec_symbol_copy(symbolic_graph, exec_symbol, i);
  const ccv_nnc_graph_exec_t copy = ccv_nnc_graph_exec_from_symbol(graph_exec_arena, copy_symbol);
  if (!CCV_NO_GRAPH_EXEC(copy))
   ccv_nnc_graph_exec_set(copy.graph, copy, cmd);
 }
}
