
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_t ;


 int ccv_nnc_tensor_free (int *) ;

__attribute__((used)) static void _ccv_cnnp_tensor_deinit(void* const data, void* const context)
{
 ccv_nnc_tensor_free((ccv_nnc_tensor_t*)data);
}
