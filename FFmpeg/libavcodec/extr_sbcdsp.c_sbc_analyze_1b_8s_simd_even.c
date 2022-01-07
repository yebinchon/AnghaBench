
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int sbc_analyze_8s; int (* sbc_analyze_8 ) (int *,int *,int ) ;} ;
typedef TYPE_1__ SBCDSPContext ;


 int ff_sbcdsp_analysis_consts_fixed8_simd_even ;
 int sbc_analyze_1b_8s_simd_odd ;
 int stub1 (int *,int *,int ) ;

__attribute__((used)) static inline void sbc_analyze_1b_8s_simd_even(SBCDSPContext *s,
                                               int16_t *x, int32_t *out,
                                               int out_stride)
{
    s->sbc_analyze_8(x, out, ff_sbcdsp_analysis_consts_fixed8_simd_even);
    s->sbc_analyze_8s = sbc_analyze_1b_8s_simd_odd;
}
