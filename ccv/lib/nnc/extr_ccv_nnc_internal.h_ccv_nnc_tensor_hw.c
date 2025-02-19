
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ format; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;


 int CCV_NNC_MAX_DIM ;
 scalar_t__ CCV_TENSOR_FORMAT_CHWN ;
 scalar_t__ CCV_TENSOR_FORMAT_NCHW ;
 scalar_t__ CCV_TENSOR_FORMAT_NHWC ;

__attribute__((used)) static inline int ccv_nnc_tensor_hw(const ccv_nnc_tensor_param_t a, const int nd)
{
 if ((a.format == CCV_TENSOR_FORMAT_CHWN) ||
  (a.format == CCV_TENSOR_FORMAT_NHWC && nd == CCV_NNC_MAX_DIM + 1))
  return 0;
 else if ((a.format == CCV_TENSOR_FORMAT_NHWC && nd == CCV_NNC_MAX_DIM + 2) ||
    (a.format == CCV_TENSOR_FORMAT_NCHW && nd == CCV_NNC_MAX_DIM + 1))
  return 1;
 else if (a.format == CCV_TENSOR_FORMAT_NCHW && nd == CCV_NNC_MAX_DIM + 2)
  return 2;
 return -1;
}
