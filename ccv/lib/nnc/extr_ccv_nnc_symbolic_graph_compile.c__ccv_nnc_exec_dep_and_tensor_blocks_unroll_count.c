
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ccv_sparse_matrix_t ;
struct TYPE_13__ {int assign_ref; } ;
typedef TYPE_2__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_14__ {int ref; int companion_ref; } ;
typedef TYPE_3__ ccv_nnc_tensor_block_t ;
struct TYPE_15__ {TYPE_1__* tensor_symbol_info; } ;
typedef TYPE_4__ ccv_nnc_symbolic_graph_t ;
struct TYPE_12__ {int rnum; } ;


 scalar_t__ TENSOR_EXPECT_ORDINARY (TYPE_3__) ;
 int TENSOR_EXPECT_UNASSIGNED (TYPE_3__) ;
 int _ccv_nnc_tensor_block_head_after_tail (int const* const,TYPE_3__,TYPE_3__) ;
 int assert (int) ;
 int ccv_max (int,int) ;

__attribute__((used)) static int _ccv_nnc_exec_dep_and_tensor_blocks_unroll_count(const ccv_nnc_symbolic_graph_t* const symbolic_graph, const ccv_nnc_tensor_symbol_info_t* const tensor_symbol_info, const ccv_sparse_matrix_t* const exec_dep, ccv_nnc_tensor_block_t* const tensor_blocks)
{
 int i, j, unroll_count = 0;
 for (i = 0; i < symbolic_graph->tensor_symbol_info->rnum; i++)
  if (!TENSOR_EXPECT_UNASSIGNED(tensor_blocks[i]) && tensor_symbol_info[i].assign_ref)
  {

   assert(tensor_blocks[i].ref || TENSOR_EXPECT_ORDINARY(tensor_blocks[i]));
   const int assign_ref = tensor_symbol_info[i].assign_ref - 1;

   assert(tensor_blocks[assign_ref].ref || TENSOR_EXPECT_ORDINARY(tensor_blocks[assign_ref]));


   int a_ref = i;
   while (tensor_blocks[a_ref].ref)
    a_ref = tensor_blocks[a_ref].ref - 1;
   int b_ref = assign_ref;
   while (tensor_blocks[b_ref].ref)
    b_ref = tensor_blocks[b_ref].ref - 1;
   if (a_ref != b_ref)
   {


    int a_hop_b = _ccv_nnc_tensor_block_head_after_tail(exec_dep, tensor_blocks[b_ref], tensor_blocks[a_ref]);
    int b_hop_a = _ccv_nnc_tensor_block_head_after_tail(exec_dep, tensor_blocks[a_ref], tensor_blocks[b_ref]);

    assert(!(a_hop_b > 0 && b_hop_a > 0));


    if (a_hop_b || b_hop_a)
    {
     tensor_blocks[a_ref].companion_ref = b_ref + 1;
     tensor_blocks[b_ref].companion_ref = a_ref + 1;
     continue;
    }
    int c_ref = tensor_symbol_info[b_ref].assign_ref - 1;
    for (j = 0; c_ref >= 0; j++)
    {
     while (tensor_blocks[c_ref].ref)
      c_ref = tensor_blocks[c_ref].ref - 1;
     c_ref = tensor_symbol_info[c_ref].assign_ref - 1;
    }
    unroll_count = ccv_max(unroll_count, j + 1);
   }
  }

 if (unroll_count)
  for (j = 0; j < symbolic_graph->tensor_symbol_info->rnum; j++)
   tensor_blocks[j].companion_ref = 0;
 return unroll_count;
}
