#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum Mode { ____Placeholder_Mode } Mode ;
struct TYPE_6__ {int /*<<< orphan*/  (* celp_lp_synthesis_filterf ) (float*,float*,float const*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* weighted_vector_sumf ) (float*,float const*,float const*,scalar_t__,scalar_t__,int) ;} ;
struct TYPE_7__ {int fr_cur_mode; float** lp_coef; TYPE_2__ celpf_ctx; TYPE_1__ acelpv_ctx; } ;
typedef  TYPE_3__ AMRWBContext ;

/* Variables and functions */
 int /*<<< orphan*/  AMRWB_SFR_SIZE_16k ; 
 int LP_ORDER ; 
 int LP_ORDER_16k ; 
 int MODE_6k60 ; 
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (double*,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (double*,float*,int) ; 
 scalar_t__* isfp_inter ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,double,int) ; 
 int /*<<< orphan*/  FUNC4 (float*,float const*,float const*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,float const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(AMRWBContext *ctx, int subframe, float *samples,
                         const float *exc, const float *isf, const float *isf_past)
{
    float hb_lpc[LP_ORDER_16k];
    enum Mode mode = ctx->fr_cur_mode;

    if (mode == MODE_6k60) {
        float e_isf[LP_ORDER_16k]; // ISF vector for extrapolation
        double e_isp[LP_ORDER_16k];

        ctx->acelpv_ctx.weighted_vector_sumf(e_isf, isf_past, isf, isfp_inter[subframe],
                                1.0 - isfp_inter[subframe], LP_ORDER);

        FUNC0(e_isf);

        e_isf[LP_ORDER_16k - 1] *= 2.0;
        FUNC1(e_isp, e_isf, LP_ORDER_16k);
        FUNC2(e_isp, hb_lpc, LP_ORDER_16k);

        FUNC3(hb_lpc, hb_lpc, 0.9, LP_ORDER_16k);
    } else {
        FUNC3(hb_lpc, ctx->lp_coef[subframe], 0.6, LP_ORDER);
    }

    ctx->celpf_ctx.celp_lp_synthesis_filterf(samples, hb_lpc, exc, AMRWB_SFR_SIZE_16k,
                                 (mode == MODE_6k60) ? LP_ORDER_16k : LP_ORDER);
}