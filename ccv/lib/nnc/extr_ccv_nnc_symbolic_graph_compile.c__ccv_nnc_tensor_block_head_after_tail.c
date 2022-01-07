
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_sparse_matrix_t ;
struct TYPE_4__ {int tail; int head; } ;
typedef TYPE_1__ ccv_nnc_tensor_block_t ;


 int _ccv_nnc_tensor_block_a_after_b_exclusively (int const* const,int ,int ) ;

__attribute__((used)) static int _ccv_nnc_tensor_block_head_after_tail(const ccv_sparse_matrix_t* const exec_dep, const ccv_nnc_tensor_block_t a, const ccv_nnc_tensor_block_t b)
{
 return _ccv_nnc_tensor_block_a_after_b_exclusively(exec_dep, a.head, b.tail);
}
