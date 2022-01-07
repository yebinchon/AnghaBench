
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ccv_nnc_tensor_view_t ;
struct TYPE_11__ {int* dim; } ;
struct TYPE_12__ {TYPE_1__ info; } ;
typedef TYPE_2__ ccv_nnc_tensor_t ;
typedef int ccv_nnc_stream_context_t ;
typedef int ccv_nnc_hint_t ;


 int _ccv_nnc_conv_forw_4x4_3x3_winograd_neon (int const* const,TYPE_2__ const* const,TYPE_2__ const* const,int const,int * const,int * const) ;
 int _ccv_nnc_conv_forw_4x4_3x3_winograd_ref (int const* const,TYPE_2__ const* const,TYPE_2__ const* const,int const,int * const,int * const) ;
 int _ccv_nnc_conv_forw_4x4_3x3_winograd_sse2 (int const* const,TYPE_2__ const* const,TYPE_2__ const* const,int const,int * const,int * const) ;

int _ccv_nnc_conv_forw_4x4_3x3_winograd_cpu_opt(const ccv_nnc_tensor_view_t* const a, const ccv_nnc_tensor_t* const w, const ccv_nnc_tensor_t* const bias, const ccv_nnc_hint_t hint, ccv_nnc_tensor_view_t* const b, ccv_nnc_stream_context_t* const stream_context)
{







 return _ccv_nnc_conv_forw_4x4_3x3_winograd_ref(a, w, bias, hint, b, stream_context);
}
