
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ graph_exec_arena; scalar_t__ tensor_arena; scalar_t__ graph; } ;
struct TYPE_5__ {TYPE_1__ apply_gradients; } ;
typedef TYPE_2__ ccv_cnnp_compiled_data_t ;


 int ccv_nnc_graph_exec_arena_free (scalar_t__) ;
 int ccv_nnc_graph_free (scalar_t__) ;
 int ccv_nnc_tensor_arena_free (scalar_t__) ;

__attribute__((used)) static void _ccv_cnnp_compiled_data_apply_gradients_free(ccv_cnnp_compiled_data_t* const compiled_data)
{
 if (compiled_data->apply_gradients.graph)
  ccv_nnc_graph_free(compiled_data->apply_gradients.graph);
 compiled_data->apply_gradients.graph = 0;
 if (compiled_data->apply_gradients.tensor_arena)
  ccv_nnc_tensor_arena_free(compiled_data->apply_gradients.tensor_arena);
 compiled_data->apply_gradients.tensor_arena = 0;
 if (compiled_data->apply_gradients.graph_exec_arena)
  ccv_nnc_graph_exec_arena_free(compiled_data->apply_gradients.graph_exec_arena);
 compiled_data->apply_gradients.graph_exec_arena = 0;
}
