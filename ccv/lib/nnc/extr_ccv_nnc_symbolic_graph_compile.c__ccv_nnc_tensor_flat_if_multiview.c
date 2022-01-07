
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int u8; } ;
struct TYPE_7__ {uintptr_t alias_ref; int info; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_nnc_tensor_t ;
typedef int ccv_nnc_tensor_multiview_t ;
typedef int ccv_array_t ;


 int CCV_IS_TENSOR_MULTIVIEW (TYPE_2__*) ;
 scalar_t__* CCV_NNC_MULTIVIEW_DATA (int const* const) ;
 void* _ccv_nnc_tensor_metadata_get (int * const,int const) ;
 int _ccv_nnc_tensor_metadata_pos_new (int * const,int) ;
 TYPE_2__ ccv_nnc_tensor (int ,int ,int ) ;
 int ccv_nnc_tensor_synchronize_to_multiview (int * const,TYPE_2__*) ;

__attribute__((used)) static int _ccv_nnc_tensor_flat_if_multiview(ccv_array_t* const tensor_metadata, const int pos)
{
 ccv_nnc_tensor_t* tensor_ptr = _ccv_nnc_tensor_metadata_get(tensor_metadata, pos);
 const int is_multiview = CCV_IS_TENSOR_MULTIVIEW(tensor_ptr);
 if (!is_multiview)
  return pos;
 while (CCV_IS_TENSOR_MULTIVIEW(tensor_ptr))
 {
  const ccv_nnc_tensor_multiview_t* const mv = (const ccv_nnc_tensor_multiview_t*)tensor_ptr;
  tensor_ptr = _ccv_nnc_tensor_metadata_get(tensor_metadata, (int)(intptr_t)CCV_NNC_MULTIVIEW_DATA(mv)[0]);
 }
 const ccv_nnc_tensor_t tensor = *tensor_ptr;
 const int new_pos = _ccv_nnc_tensor_metadata_pos_new(tensor_metadata, sizeof(ccv_nnc_tensor_t));
 ccv_nnc_tensor_t* const new_tensor = _ccv_nnc_tensor_metadata_get(tensor_metadata, new_pos);
 *new_tensor = ccv_nnc_tensor(tensor.data.u8, tensor.info, 0);
 ccv_nnc_tensor_multiview_t* const mv = (ccv_nnc_tensor_multiview_t*)_ccv_nnc_tensor_metadata_get(tensor_metadata, pos);
 new_tensor->alias_ref = (uintptr_t)pos;
 ccv_nnc_tensor_synchronize_to_multiview(mv, (ccv_nnc_tensor_t*)(intptr_t)new_pos);
 return new_pos;
}
