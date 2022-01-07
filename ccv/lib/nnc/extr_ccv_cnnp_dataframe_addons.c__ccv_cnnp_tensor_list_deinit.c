
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_2__ {int size; } ;
typedef TYPE_1__ ccv_cnnp_dataframe_tuple_t ;


 int ccfree (int ** const) ;
 int ccv_nnc_tensor_free (int *) ;

__attribute__((used)) static void _ccv_cnnp_tensor_list_deinit(void* const data, void* const context)
{
 ccv_cnnp_dataframe_tuple_t* const tuple = (ccv_cnnp_dataframe_tuple_t*)context;
 ccv_nnc_tensor_t** const tensor_list = (ccv_nnc_tensor_t**)data;
 int i;
 for (i = 0; i < tuple->size; i++)
  if (tensor_list[i])
   ccv_nnc_tensor_free(tensor_list[i]);
 ccfree(tensor_list);
}
