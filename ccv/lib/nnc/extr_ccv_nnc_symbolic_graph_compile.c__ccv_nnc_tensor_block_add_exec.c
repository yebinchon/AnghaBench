
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ccv_sparse_matrix_t ;
struct TYPE_9__ {scalar_t__* i32; } ;
typedef TYPE_1__ ccv_numeric_data_t ;
struct TYPE_10__ {TYPE_3__* tail; TYPE_3__* head; } ;
typedef TYPE_2__ ccv_nnc_tensor_block_t ;
struct TYPE_11__ {int rnum; } ;
typedef TYPE_3__ ccv_array_t ;


 int assert (TYPE_3__*) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int) ;
 int ccv_array_push (TYPE_3__*,int const*) ;
 TYPE_1__ ccv_get_sparse_matrix_cell (int const* const,int const,int const) ;

__attribute__((used)) static void _ccv_nnc_tensor_block_add_exec(const ccv_sparse_matrix_t* const exec_dep, const int idx, ccv_nnc_tensor_block_t tensor_blocks)
{
 int i, found = 0;

 ccv_array_t* head = tensor_blocks.head;
 assert(head);
 for (i = 0; i < head->rnum;)
 {
  const int head_idx = *(int*)ccv_array_get(head, i);
  if (head_idx == idx)
  {
   found = 1;
   break;
  }
  ccv_numeric_data_t cell = ccv_get_sparse_matrix_cell(exec_dep, head_idx, idx);
  if (cell.i32 && cell.i32[0] > 0)
  {


   if (!found)
   {
    found = 1;
    *(int*)ccv_array_get(head, i) = idx;
   } else {

    if (i < head->rnum - 1)
     *(int*)ccv_array_get(head, i) = *(int*)ccv_array_get(head, head->rnum - 1);
    --head->rnum;
    continue;
   }
  } else {

   cell = ccv_get_sparse_matrix_cell(exec_dep, idx, head_idx);
   if (cell.i32 && cell.i32[0] > 0)
   {
    found = 1;
    break;
   }
  }

  ++i;
 }

 if (!found)
  ccv_array_push(head, &idx);

 found = 0;
 ccv_array_t* tail = tensor_blocks.tail;
 assert(tail);
 for (i = 0; i < tail->rnum;)
 {
  const int tail_idx = *(int*)ccv_array_get(tail, i);
  if (tail_idx == idx)
  {
   found = 1;
   break;
  }
  ccv_numeric_data_t cell = ccv_get_sparse_matrix_cell(exec_dep, idx, tail_idx);
  if (cell.i32 && cell.i32[0] > 0)
  {


   if (!found)
   {
    found = 1;
    *(int*)ccv_array_get(tail, i) = idx;
   } else {

    *(int*)ccv_array_get(tail, i) = *(int*)ccv_array_get(tail, tail->rnum - 1);
    --tail->rnum;
    continue;
   }
  } else {

   cell = ccv_get_sparse_matrix_cell(exec_dep, tail_idx, idx);
   if (cell.i32 && cell.i32[0] > 0)
   {
    found = 1;
    break;
   }
  }

  ++i;
 }

 if (!found)
  ccv_array_push(tail, &idx);
}
