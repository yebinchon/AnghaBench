#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float* postfilter_mem; float* postfilter_mem5k0; int /*<<< orphan*/  tilt_mem; } ;
typedef  TYPE_1__ SiprContext ;

/* Variables and functions */
 int LP_FILTER_ORDER ; 
 int SUBFR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*,int,int) ; 
 float const* ff_pow_0_5 ; 
 float const* ff_pow_0_75 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,int) ; 

__attribute__((used)) static void FUNC4(SiprContext *ctx, const float *lpc, float *samples)
{
    float buf[SUBFR_SIZE + LP_FILTER_ORDER];
    float *pole_out = buf + LP_FILTER_ORDER;
    float lpc_n[LP_FILTER_ORDER];
    float lpc_d[LP_FILTER_ORDER];
    int i;

    for (i = 0; i < LP_FILTER_ORDER; i++) {
        lpc_d[i] = lpc[i] * ff_pow_0_75[i];
        lpc_n[i] = lpc[i] * ff_pow_0_5 [i];
    };

    FUNC3(pole_out - LP_FILTER_ORDER, ctx->postfilter_mem,
           LP_FILTER_ORDER*sizeof(float));

    FUNC0(pole_out, lpc_d, samples, SUBFR_SIZE,
                                 LP_FILTER_ORDER);

    FUNC3(ctx->postfilter_mem, pole_out + SUBFR_SIZE - LP_FILTER_ORDER,
           LP_FILTER_ORDER*sizeof(float));

    FUNC2(&ctx->tilt_mem, 0.4, pole_out, SUBFR_SIZE);

    FUNC3(pole_out - LP_FILTER_ORDER, ctx->postfilter_mem5k0,
           LP_FILTER_ORDER*sizeof(*pole_out));

    FUNC3(ctx->postfilter_mem5k0, pole_out + SUBFR_SIZE - LP_FILTER_ORDER,
           LP_FILTER_ORDER*sizeof(*pole_out));

    FUNC1(samples, lpc_n, pole_out, SUBFR_SIZE,
                                      LP_FILTER_ORDER);

}