
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ccv_nnc_tensor_view_t ;
struct TYPE_9__ {int* dim; } ;
struct TYPE_10__ {TYPE_1__ info; } ;
typedef TYPE_2__ ccv_nnc_tensor_t ;
typedef int ccv_nnc_hint_t ;


 int CCV_NNC_EXEC_INVALID ;
 int _ccv_nnc_conv_forw_neon (int const* const,TYPE_2__ const* const,TYPE_2__ const* const,int const,int * const) ;
 int _ccv_nnc_conv_forw_sse2 (int const* const,TYPE_2__ const* const,TYPE_2__ const* const,int const,int * const) ;

int _ccv_nnc_conv_forw_cpu_opt(const ccv_nnc_tensor_view_t* const a, const ccv_nnc_tensor_t* const w, const ccv_nnc_tensor_t* const bias, const ccv_nnc_hint_t hint, ccv_nnc_tensor_view_t* const b)
{







 return CCV_NNC_EXEC_INVALID;
}
