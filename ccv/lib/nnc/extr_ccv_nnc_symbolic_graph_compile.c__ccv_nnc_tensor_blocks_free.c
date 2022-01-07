
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dup_p_refs; scalar_t__ r_refs; scalar_t__ tail; scalar_t__ head; } ;
typedef TYPE_1__ ccv_nnc_tensor_block_t ;


 int ccfree (TYPE_1__* const) ;
 int ccv_array_free (scalar_t__) ;

__attribute__((used)) static void _ccv_nnc_tensor_blocks_free(ccv_nnc_tensor_block_t* const tensor_blocks, const int tensor_block_size)
{
 int i;
 for (i = 0; i < tensor_block_size; i++)
 {
  if (tensor_blocks[i].head)
   ccv_array_free(tensor_blocks[i].head);
  if (tensor_blocks[i].tail)
   ccv_array_free(tensor_blocks[i].tail);
  if (tensor_blocks[i].r_refs)
   ccv_array_free(tensor_blocks[i].r_refs);
  if (tensor_blocks[i].dup_p_refs)
   ccv_array_free(tensor_blocks[i].dup_p_refs);
 }
 ccfree(tensor_blocks);
}
