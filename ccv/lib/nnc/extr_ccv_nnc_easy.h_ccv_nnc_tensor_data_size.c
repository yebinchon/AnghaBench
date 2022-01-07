
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {int datatype; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;


 int CCV_GET_DATA_TYPE_SIZE (int ) ;
 scalar_t__ ccv_nnc_tensor_count (TYPE_1__ const) ;

__attribute__((used)) static inline size_t ccv_nnc_tensor_data_size(const ccv_nnc_tensor_param_t params)
{
 return (CCV_GET_DATA_TYPE_SIZE(params.datatype) * (ssize_t)ccv_nnc_tensor_count(params) + 15) & -16;
}
