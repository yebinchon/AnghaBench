
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int u8; int f32; } ;
struct TYPE_19__ {scalar_t__* dim; } ;
struct TYPE_17__ {TYPE_2__ data; TYPE_5__ info; } ;
typedef TYPE_3__ const ccv_nnc_tensor_view_t ;
typedef int ccv_matrix_t ;
struct TYPE_15__ {scalar_t__ f32; } ;
struct TYPE_18__ {TYPE_1__ data; } ;
typedef TYPE_4__ ccv_dense_matrix_t ;


 int CCV_32F ;
 int CCV_B_TRANSPOSE ;
 int CCV_C1 ;
 int CCV_IS_TENSOR_VIEW (TYPE_3__ const* const) ;
 int CCV_NNC_EXEC_INVALID ;
 int CCV_NNC_EXEC_SUCCESS ;
 int assert (int) ;
 TYPE_4__ ccv_dense_matrix (int const,int const,int,int ,int ) ;
 int ccv_gemm (TYPE_4__*,TYPE_4__*,int,TYPE_4__*,int,int ,int **,int ) ;
 int ccv_max (int,int) ;
 int const ccv_nnc_tensor_count (TYPE_5__) ;
 int ccv_nnc_tensor_nd (scalar_t__*) ;
 int memcpy (scalar_t__,int ,int) ;
 int memset (scalar_t__,int ,int) ;

int _ccv_nnc_gemm_forw_cpu_sys(const ccv_nnc_tensor_view_t* const a, const ccv_nnc_tensor_view_t* const w, const ccv_nnc_tensor_view_t* const bias, ccv_nnc_tensor_view_t* const b)
{
 return CCV_NNC_EXEC_INVALID;

}
