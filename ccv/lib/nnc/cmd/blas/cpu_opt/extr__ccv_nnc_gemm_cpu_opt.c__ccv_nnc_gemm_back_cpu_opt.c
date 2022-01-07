
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int* dim; } ;
struct TYPE_22__ {TYPE_1__ info; } ;
typedef TYPE_2__ ccv_nnc_tensor_view_t ;


 int CCV_NNC_EXEC_INVALID ;
 int _ccv_nnc_gemm_back_neon (TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__* const,TYPE_2__* const,TYPE_2__* const,int const) ;
 int _ccv_nnc_gemm_back_sse2 (TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__* const,TYPE_2__* const,TYPE_2__* const,int const) ;
 int ccv_nnc_tensor_nd (int*) ;

int _ccv_nnc_gemm_back_cpu_opt(const ccv_nnc_tensor_view_t* const g, const ccv_nnc_tensor_view_t* const a, const ccv_nnc_tensor_view_t* const w, ccv_nnc_tensor_view_t* const dw, ccv_nnc_tensor_view_t* const bias, ccv_nnc_tensor_view_t* const h, const int flags)
{
 return CCV_NNC_EXEC_INVALID;
}
