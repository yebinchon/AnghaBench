
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ graph_exec_arena; scalar_t__ tensor_arena; scalar_t__ accum; scalar_t__ gradients; } ;
struct TYPE_5__ {TYPE_1__ backward; } ;
typedef TYPE_2__ ccv_cnnp_compiled_data_t ;


 int ccfree (scalar_t__) ;
 int ccv_nnc_graph_exec_arena_free (scalar_t__) ;
 int ccv_nnc_graph_free (scalar_t__) ;
 int ccv_nnc_tensor_arena_free (scalar_t__) ;

__attribute__((used)) static void _ccv_cnnp_compiled_data_backward_free(ccv_cnnp_compiled_data_t* const compiled_data)
{
 if (compiled_data->backward.gradients)
  ccfree(compiled_data->backward.gradients);
 compiled_data->backward.gradients = 0;
 if (compiled_data->backward.accum)
  ccv_nnc_graph_free(compiled_data->backward.accum);
 compiled_data->backward.accum = 0;
 if (compiled_data->backward.tensor_arena)
  ccv_nnc_tensor_arena_free(compiled_data->backward.tensor_arena);
 compiled_data->backward.tensor_arena = 0;
 if (compiled_data->backward.graph_exec_arena)
  ccv_nnc_graph_exec_arena_free(compiled_data->backward.graph_exec_arena);
 compiled_data->backward.graph_exec_arena = 0;
}
