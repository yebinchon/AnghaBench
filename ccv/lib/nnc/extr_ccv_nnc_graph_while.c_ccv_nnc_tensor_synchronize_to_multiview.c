
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_3__ {scalar_t__ sp; } ;
typedef TYPE_1__ ccv_nnc_tensor_multiview_t ;


 scalar_t__ ccv_array_new (int,int ,int ) ;
 int ccv_array_push (scalar_t__,int * const*) ;

void ccv_nnc_tensor_synchronize_to_multiview(ccv_nnc_tensor_multiview_t* const tensor_multiview, ccv_nnc_tensor_t* const tensor)
{
 if (!tensor_multiview->sp)
  tensor_multiview->sp = ccv_array_new(sizeof(ccv_nnc_tensor_t*), 0, 0);
 ccv_array_push(tensor_multiview->sp, &tensor);
}
