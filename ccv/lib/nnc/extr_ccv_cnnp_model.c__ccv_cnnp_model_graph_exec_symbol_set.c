
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int * graph_exec_arena; } ;
struct TYPE_17__ {TYPE_1__ apply_gradients; int * graph_exec_arena; int parallel_count; } ;
typedef TYPE_2__ ccv_nnc_symbolic_graph_t ;
struct TYPE_18__ {scalar_t__ graph; } ;
typedef TYPE_3__ const ccv_nnc_graph_exec_symbol_t ;
typedef int ccv_nnc_graph_exec_arena_t ;
typedef int ccv_nnc_cmd_t ;
struct TYPE_19__ {TYPE_2__* graph; TYPE_2__* compiled_data; } ;
typedef TYPE_4__ ccv_cnnp_model_t ;
typedef TYPE_2__ ccv_cnnp_compiled_data_t ;


 int _ccv_cnnp_model_graph_symbol_exec_set_for_graph_exec_arena (int * const,int const,TYPE_3__ const,int const,TYPE_2__* const) ;
 int assert (TYPE_2__* const) ;
 int ccv_max (int ,int) ;
 TYPE_3__ const ccv_nnc_graph_exec_symbol_copy (TYPE_2__* const,TYPE_3__ const,int) ;
 int ccv_nnc_graph_exec_symbol_set (TYPE_2__* const,TYPE_3__ const,int const) ;

__attribute__((used)) static void _ccv_cnnp_model_graph_exec_symbol_set(ccv_cnnp_model_t* const model, const ccv_nnc_graph_exec_symbol_t exec_symbol, const ccv_nnc_cmd_t cmd)
{
 ccv_cnnp_compiled_data_t* const compiled_data = model->compiled_data;
 assert(compiled_data);
 const int parallel_count = ccv_max(compiled_data->parallel_count, 1);
 ccv_nnc_symbolic_graph_t* const symbolic_graph = model->graph;
 assert(symbolic_graph);
 ccv_nnc_graph_exec_symbol_set(symbolic_graph, exec_symbol, cmd);
 int i;
 for (i = 1; i < parallel_count; i++)
 {
  ccv_nnc_graph_exec_symbol_t copy_symbol = ccv_nnc_graph_exec_symbol_copy(symbolic_graph, exec_symbol, i);
  if (copy_symbol.graph)
   ccv_nnc_graph_exec_symbol_set(symbolic_graph, copy_symbol, cmd);
 }
 ccv_nnc_graph_exec_arena_t* const graph_exec_arena = compiled_data->graph_exec_arena;
 if (graph_exec_arena)
  _ccv_cnnp_model_graph_symbol_exec_set_for_graph_exec_arena(graph_exec_arena, parallel_count, exec_symbol, cmd, symbolic_graph);

 ccv_nnc_graph_exec_arena_t* const gradient_graph_exec_arena = compiled_data->apply_gradients.graph_exec_arena;
 if (gradient_graph_exec_arena)
  _ccv_cnnp_model_graph_symbol_exec_set_for_graph_exec_arena(gradient_graph_exec_arena, parallel_count, exec_symbol, cmd, symbolic_graph);
}
