
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_tensor_param_t ;


 int ccv_nnc_tensor_auto ;
 scalar_t__ memcmp (int const*,int *,int) ;

int ccv_nnc_is_tensor_auto(const ccv_nnc_tensor_param_t params)
{
 return (memcmp(&params, &ccv_nnc_tensor_auto, sizeof(ccv_nnc_tensor_param_t)) == 0);
}
