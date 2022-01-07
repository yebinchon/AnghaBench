
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_4__ {int kind; int repeat; } ;
typedef TYPE_1__ ccv_nnc_tensor_multiview_t ;


 scalar_t__ CCV_IS_TENSOR_MULTIVIEW (int *) ;
 int ** CCV_NNC_MULTIVIEW_DATA (TYPE_1__*) ;

__attribute__((used)) static ccv_nnc_tensor_t* _ccv_nnc_any_tensor_from_tensor_multiview(ccv_nnc_tensor_multiview_t* const mv)
{
 ccv_nnc_tensor_t* tensor = (ccv_nnc_tensor_t*)mv;
 while (CCV_IS_TENSOR_MULTIVIEW(tensor))
 {
  ccv_nnc_tensor_multiview_t* mv = (ccv_nnc_tensor_multiview_t*)tensor;
  const int count = 0;
  const int off = mv->kind;
  const int mod = mv->repeat;

  tensor = CCV_NNC_MULTIVIEW_DATA(mv)[count >= off ? ((count - off) % mod) + off : count];
 }
 return tensor;
}
