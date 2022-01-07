
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_1__ ccv_nnc_tensor_t ;
struct TYPE_8__ {int repeat; int kind; int type; } ;
typedef TYPE_2__ ccv_nnc_tensor_multiview_t ;


 int CCV_IS_TENSOR_MULTIVIEW (TYPE_1__* const) ;
 TYPE_1__** CCV_NNC_MULTIVIEW_DATA (TYPE_2__* const) ;
 int CCV_TAPE_ALLOC ;

__attribute__((used)) static void _ccv_nnc_tensor_mark_as_tape_var(ccv_nnc_tensor_t* const tensor)
{
 if (!CCV_IS_TENSOR_MULTIVIEW(tensor))
  tensor->type |= CCV_TAPE_ALLOC;
 else {
  ccv_nnc_tensor_multiview_t* const mv = (ccv_nnc_tensor_multiview_t*)tensor;
  mv->type |= CCV_TAPE_ALLOC;
  int i;
  for (i = 0; i < mv->repeat + mv->kind; i++)
   _ccv_nnc_tensor_mark_as_tape_var(CCV_NNC_MULTIVIEW_DATA(mv)[i]);
 }
}
