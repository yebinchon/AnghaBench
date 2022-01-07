
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int const unfoldable_except_ref; scalar_t__ type; scalar_t__* p_refs; int pin_mem; int ref; TYPE_2__* tail; TYPE_2__* head; scalar_t__ size; scalar_t__ r_refs; } ;
typedef TYPE_1__ ccv_nnc_tensor_block_t ;
struct TYPE_13__ {int rnum; } ;


 int TENSOR_EXPECT_COMPUTABLE (TYPE_1__) ;
 int TENSOR_EXPECT_SET_UNASSIGNED (TYPE_1__) ;
 scalar_t__ TENSOR_IS_UNFOLDABLE_AS_INPUT (TYPE_1__) ;
 int TENSOR_IS_UNFOLDABLE_AS_OUTPUT (TYPE_1__) ;
 int TENSOR_READ_WRITE (TYPE_1__) ;
 int TENSOR_SET_READ_WRITE (TYPE_1__,int) ;
 int TENSOR_SET_UNFOLDABLE_AS_INPUT (TYPE_1__) ;
 int assert (int) ;
 int ccv_array_add_unique_int (scalar_t__,int const) ;
 int ccv_array_free (TYPE_2__*) ;
 scalar_t__ ccv_array_get (TYPE_2__*,int ) ;
 scalar_t__ ccv_array_new (int,int ,int ) ;

__attribute__((used)) static int _ccv_nnc_tensor_blocks_try_fold(ccv_nnc_tensor_block_t* const tensor_blocks, const int p_ref_0, const int p_ref_1)
{

 if (!TENSOR_IS_UNFOLDABLE_AS_INPUT(tensor_blocks[p_ref_0]) &&
  (!TENSOR_IS_UNFOLDABLE_AS_OUTPUT(tensor_blocks[p_ref_1]) || tensor_blocks[p_ref_1].unfoldable_except_ref == p_ref_0 + 1) &&
  tensor_blocks[p_ref_0].tail->rnum == 1 &&
  tensor_blocks[p_ref_1].head->rnum == 1 &&
  tensor_blocks[p_ref_0].type == tensor_blocks[p_ref_1].type &&
  *(int*)ccv_array_get(tensor_blocks[p_ref_0].tail, 0) == *(int*)ccv_array_get(tensor_blocks[p_ref_1].head, 0))
 {

  assert(TENSOR_EXPECT_COMPUTABLE(tensor_blocks[p_ref_0]));
  assert(TENSOR_EXPECT_COMPUTABLE(tensor_blocks[p_ref_1]));
  ccv_array_free(tensor_blocks[p_ref_0].tail);
  tensor_blocks[p_ref_0].tail = tensor_blocks[p_ref_1].tail;
  if (tensor_blocks[p_ref_1].p_refs[0])
  {
   assert(tensor_blocks[p_ref_1].p_refs[1] == 0);
   if (!tensor_blocks[p_ref_0].p_refs[0])
    tensor_blocks[p_ref_0].p_refs[0] = tensor_blocks[p_ref_1].p_refs[0];
   else
    tensor_blocks[p_ref_0].p_refs[1] = tensor_blocks[p_ref_1].p_refs[0];
  }
  tensor_blocks[p_ref_0].pin_mem = tensor_blocks[p_ref_0].pin_mem || tensor_blocks[p_ref_1].pin_mem;
  TENSOR_SET_READ_WRITE(tensor_blocks[p_ref_0], TENSOR_READ_WRITE(tensor_blocks[p_ref_0]) | TENSOR_READ_WRITE(tensor_blocks[p_ref_1]));
  ccv_array_free(tensor_blocks[p_ref_1].head);
  if (TENSOR_IS_UNFOLDABLE_AS_INPUT(tensor_blocks[p_ref_1]))
   TENSOR_SET_UNFOLDABLE_AS_INPUT(tensor_blocks[p_ref_0]);

  TENSOR_EXPECT_SET_UNASSIGNED(tensor_blocks[p_ref_1]);
  tensor_blocks[p_ref_1].ref = p_ref_0 + 1;
  if (!tensor_blocks[p_ref_0].r_refs)
   tensor_blocks[p_ref_0].r_refs = ccv_array_new(sizeof(int), 0, 0);
  ccv_array_add_unique_int(tensor_blocks[p_ref_0].r_refs, p_ref_1 + 1);
  tensor_blocks[p_ref_1].size = 0;
  tensor_blocks[p_ref_1].head = 0;
  tensor_blocks[p_ref_1].tail = 0;
  return 1;
 }
 return 0;
}
