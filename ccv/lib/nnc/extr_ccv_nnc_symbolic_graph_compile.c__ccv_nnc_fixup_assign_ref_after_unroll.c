
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int assign_ref; int r_assign_ref; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_info_t ;
typedef int ccv_nnc_tensor_block_t ;
struct TYPE_8__ {TYPE_1__* tensor_symbol_info; } ;
typedef TYPE_3__ ccv_nnc_symbolic_graph_t ;
struct TYPE_6__ {int rnum; } ;


 int assert (int) ;

__attribute__((used)) static void _ccv_nnc_fixup_assign_ref_after_unroll(const ccv_nnc_symbolic_graph_t* const symbolic_graph, const int unroll_count, const ccv_nnc_tensor_block_t* const tensor_blocks, const int* const dup_tensor_block_ref, ccv_nnc_tensor_symbol_info_t* const dup_tensor_symbol_info)
{
 int i;
 for (i = 0; i < symbolic_graph->tensor_symbol_info->rnum; i++)


  if (dup_tensor_symbol_info[i].assign_ref)
  {
   dup_tensor_symbol_info[dup_tensor_symbol_info[i].assign_ref - 1].r_assign_ref = 0;
   dup_tensor_symbol_info[i].assign_ref = dup_tensor_block_ref[(dup_tensor_symbol_info[i].assign_ref - 1) * unroll_count + unroll_count - 1] + 1;
   assert(dup_tensor_symbol_info[i].assign_ref);
   dup_tensor_symbol_info[dup_tensor_symbol_info[i].assign_ref - 1].r_assign_ref = i + 1;
  }
}
