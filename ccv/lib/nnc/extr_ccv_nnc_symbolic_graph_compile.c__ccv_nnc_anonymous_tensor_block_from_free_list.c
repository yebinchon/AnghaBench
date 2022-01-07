
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef int ccv_sparse_matrix_t ;
struct TYPE_9__ {int const type; scalar_t__ const size; TYPE_2__ const* const dup_p_refs; } ;
typedef TYPE_1__ ccv_nnc_tensor_block_t ;
struct TYPE_10__ {scalar_t__ rnum; } ;
typedef TYPE_2__ ccv_array_t ;


 int _ccv_nnc_tensor_block_a_after_b_inclusively (int const* const,TYPE_2__ const*,TYPE_2__ const* const) ;
 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_2__ const* const,int) ;
 scalar_t__ llabs (scalar_t__) ;

__attribute__((used)) static int _ccv_nnc_anonymous_tensor_block_from_free_list(const ccv_nnc_tensor_block_t* const tensor_blocks, const int tensor_block_size, const ccv_array_t* const anonymous_block_free_list, const int anonymous_block_free_list_cap, const int type, const uint64_t size, const ccv_sparse_matrix_t* const exec_dep, const ccv_array_t* const dup_p_refs)
{
 if (!anonymous_block_free_list || !anonymous_block_free_list_cap)
  return tensor_block_size;
 int i;
 const int no_dup_p_refs = (!dup_p_refs || !dup_p_refs->rnum);
 int found_idx = tensor_block_size;
 for (i = 0; i < anonymous_block_free_list_cap; i++)
 {
  const int idx = *(int*)ccv_array_get(anonymous_block_free_list, i);
  assert(idx < tensor_block_size);

  if (tensor_blocks[idx].type != type)
   continue;


  if (tensor_blocks[idx].size >= size)
  {
   if (no_dup_p_refs)
    return idx;


   if (tensor_blocks[idx].dup_p_refs && tensor_blocks[idx].dup_p_refs->rnum &&
    _ccv_nnc_tensor_block_a_after_b_inclusively(exec_dep, tensor_blocks[idx].dup_p_refs, dup_p_refs))
    return idx;
  }
  int64_t found_idx_size_diff;
  int64_t idx_size_diff;
  if (found_idx == tensor_block_size ||



   (found_idx_size_diff = llabs((int64_t)tensor_blocks[found_idx].size - (int64_t)size)) < (idx_size_diff = llabs((int64_t)tensor_blocks[idx].size - (int64_t)size)))
  {
   found_idx = idx;
   continue;
  }

  if (found_idx_size_diff > idx_size_diff)
   continue;

  if (found_idx_size_diff == idx_size_diff && tensor_blocks[idx].size > tensor_blocks[found_idx].size)
  {
   found_idx = idx;
   continue;
  }
  assert(tensor_blocks[idx].size == tensor_blocks[found_idx].size);

  if (tensor_blocks[idx].size >= size)
  {

   if (tensor_blocks[idx].dup_p_refs && tensor_blocks[idx].dup_p_refs->rnum > 0 &&
    (!tensor_blocks[found_idx].dup_p_refs || !tensor_blocks[found_idx].dup_p_refs->rnum ||
     _ccv_nnc_tensor_block_a_after_b_inclusively(exec_dep, tensor_blocks[idx].dup_p_refs, tensor_blocks[found_idx].dup_p_refs)))
    found_idx = idx;
   continue;
  }


  if (no_dup_p_refs)
  {

   if (tensor_blocks[found_idx].dup_p_refs && tensor_blocks[found_idx].dup_p_refs->rnum > 0 &&
    (!tensor_blocks[idx].dup_p_refs || !tensor_blocks[idx].dup_p_refs->rnum ||
     _ccv_nnc_tensor_block_a_after_b_inclusively(exec_dep, tensor_blocks[found_idx].dup_p_refs, tensor_blocks[idx].dup_p_refs)))
    found_idx = idx;
   continue;
  }
  if (!tensor_blocks[idx].dup_p_refs || !tensor_blocks[idx].dup_p_refs->rnum)
   continue;
  if (!tensor_blocks[found_idx].dup_p_refs || !tensor_blocks[found_idx].dup_p_refs->rnum)
  {
   found_idx = idx;
   continue;
  }

  const int idx_after_request = _ccv_nnc_tensor_block_a_after_b_inclusively(exec_dep, tensor_blocks[idx].dup_p_refs, dup_p_refs);
  const int found_idx_after_request = _ccv_nnc_tensor_block_a_after_b_inclusively(exec_dep, tensor_blocks[found_idx].dup_p_refs, dup_p_refs);
  if (idx_after_request && found_idx_after_request)
  {
   if (_ccv_nnc_tensor_block_a_after_b_inclusively(exec_dep, tensor_blocks[found_idx].dup_p_refs, tensor_blocks[idx].dup_p_refs))
    found_idx = idx;
   continue;
  } else {



   if (!found_idx_after_request && (idx_after_request ||
    _ccv_nnc_tensor_block_a_after_b_inclusively(exec_dep, tensor_blocks[idx].dup_p_refs, tensor_blocks[found_idx].dup_p_refs)))
    found_idx = idx;
   continue;
  }
 }
 return found_idx;
}
