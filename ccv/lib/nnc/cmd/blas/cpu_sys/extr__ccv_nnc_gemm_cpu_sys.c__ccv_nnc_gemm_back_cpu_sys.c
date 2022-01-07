
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {float* f32; int u8; } ;
struct TYPE_13__ {scalar_t__* dim; } ;
struct TYPE_12__ {TYPE_1__ data; TYPE_3__ info; } ;
typedef TYPE_2__ const ccv_nnc_tensor_view_t ;
typedef int ccv_matrix_t ;
typedef int ccv_dense_matrix_t ;


 int CCV_32F ;
 int CCV_A_TRANSPOSE ;
 int CCV_C1 ;
 int CCV_IS_TENSOR_VIEW (TYPE_2__ const* const) ;
 int const CCV_NNC_ACCUMULATE_OUTPUT ;
 int CCV_NNC_EXEC_INVALID ;
 int CCV_NNC_EXEC_SUCCESS ;
 int assert (int) ;
 int ccv_dense_matrix (int const,int const,int,int ,int ) ;
 int ccv_gemm (int *,int *,int,int *,int,int ,int **,int ) ;
 int ccv_max (int,int) ;
 int ccv_nnc_tensor_count (TYPE_3__) ;
 int ccv_nnc_tensor_nd (scalar_t__*) ;
 int memset (int ,int ,int) ;

int _ccv_nnc_gemm_back_cpu_sys(const ccv_nnc_tensor_view_t* const g, const ccv_nnc_tensor_view_t* const a, const ccv_nnc_tensor_view_t* const w, ccv_nnc_tensor_view_t* const dw, ccv_nnc_tensor_view_t* const bias, ccv_nnc_tensor_view_t* const h, const int flags)
{
 return CCV_NNC_EXEC_INVALID;

}
