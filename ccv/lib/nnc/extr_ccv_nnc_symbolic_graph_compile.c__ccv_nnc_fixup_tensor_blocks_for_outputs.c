
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ccv_sparse_matrix_t ;
struct TYPE_8__ {int s_ref; } ;
typedef TYPE_1__ ccv_nnc_tensor_symbol_info_t ;
typedef int ccv_nnc_tensor_block_t ;
struct TYPE_9__ {int const d; } ;
typedef TYPE_2__ ccv_nnc_graph_exec_symbol_t ;
struct TYPE_10__ {int output_size; int* outputs; } ;
typedef TYPE_3__ ccv_nnc_graph_exec_symbol_info_t ;


 int TENSOR_EXPECT_COMPUTABLE (int ) ;
 int _ccv_nnc_tensor_block_add_exec (int * const,int const,int ) ;
 scalar_t__ ccv_array_get (int ,int const) ;

__attribute__((used)) static void _ccv_nnc_fixup_tensor_blocks_for_outputs(ccv_sparse_matrix_t* const exec_dep, ccv_nnc_tensor_block_t* const tensor_blocks, const ccv_nnc_graph_exec_symbol_info_t* const p_node_info, const int unroll_count, const ccv_nnc_graph_exec_symbol_t* const destinations, const int destination_size, const int p_idx, const ccv_nnc_tensor_symbol_info_t* const p_tensor_symbol_info, const int p_tensor_symbol_info_size, const ccv_nnc_tensor_symbol_info_t* const tensor_symbol_info, const int* const dup_exec_ref, const int* const dup_tensor_block_ref)
{
 int i, j, k;
 for (i = 0; i < p_node_info->output_size; i++)
 {
  const int d = p_node_info->outputs[i];
  const int s_ref = *(int*)ccv_array_get(p_tensor_symbol_info[d].s_ref, p_idx) - 1;
  if (!TENSOR_EXPECT_COMPUTABLE(tensor_blocks[s_ref]))
   continue;
  for (k = 0; k < destination_size; k++)
   _ccv_nnc_tensor_block_add_exec(exec_dep, destinations[k].d, tensor_blocks[s_ref]);

  for (j = 0; j < unroll_count; j++)
   for (k = 0; k < destination_size; k++)
   {
    const int dup_exec_idx = dup_exec_ref[destinations[k].d * unroll_count + j];
    const int dup_tensor_block_idx = dup_tensor_block_ref[s_ref * unroll_count + j];
    if (dup_exec_idx >= 0 && dup_tensor_block_idx >= 0)
     _ccv_nnc_tensor_block_add_exec(exec_dep, dup_exec_idx, tensor_blocks[dup_tensor_block_idx]);
   }
 }
}
