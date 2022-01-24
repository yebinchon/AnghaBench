#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  float uint16_t ;
struct TYPE_4__ {float (* dot_productf ) (float const*,float const*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  prng; TYPE_1__ celpm_ctx; } ;
typedef  TYPE_2__ AMRWBContext ;

/* Variables and functions */
 int /*<<< orphan*/  AMRWB_SFR_SIZE ; 
 int AMRWB_SFR_SIZE_16k ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float,int) ; 
 float FUNC2 (float const*,float const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(AMRWBContext *ctx, float *hb_exc,
                                 const float *synth_exc, float hb_gain)
{
    int i;
    float energy = ctx->celpm_ctx.dot_productf(synth_exc, synth_exc,
                                                AMRWB_SFR_SIZE);

    /* Generate a white-noise excitation */
    for (i = 0; i < AMRWB_SFR_SIZE_16k; i++)
        hb_exc[i] = 32768.0 - (uint16_t) FUNC0(&ctx->prng);

    FUNC1(hb_exc, hb_exc,
                                            energy * hb_gain * hb_gain,
                                            AMRWB_SFR_SIZE_16k);
}