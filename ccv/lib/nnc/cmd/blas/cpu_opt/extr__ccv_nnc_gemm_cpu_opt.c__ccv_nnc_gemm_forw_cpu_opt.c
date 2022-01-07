
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int* dim; } ;
struct TYPE_16__ {TYPE_1__ info; } ;
typedef TYPE_2__ ccv_nnc_tensor_view_t ;


 int CCV_NNC_EXEC_INVALID ;
 int _ccv_nnc_gemm_forw_neon (TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__* const) ;
 int _ccv_nnc_gemm_forw_sse2 (TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__ const* const,TYPE_2__* const) ;
 int ccv_nnc_tensor_nd (int*) ;

int _ccv_nnc_gemm_forw_cpu_opt(const ccv_nnc_tensor_view_t* const a, const ccv_nnc_tensor_view_t* const w, const ccv_nnc_tensor_view_t* const bias, ccv_nnc_tensor_view_t* const b)
{
 return CCV_NNC_EXEC_INVALID;
}
