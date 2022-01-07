
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dim; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;


 size_t ccv_nnc_dimension_count (int ) ;

__attribute__((used)) static inline size_t ccv_nnc_tensor_count(const ccv_nnc_tensor_param_t params)
{
 return ccv_nnc_dimension_count(params.dim);
}
