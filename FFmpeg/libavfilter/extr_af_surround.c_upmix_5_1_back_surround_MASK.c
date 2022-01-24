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
struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  br_y; int /*<<< orphan*/  br_x; int /*<<< orphan*/  bl_y; int /*<<< orphan*/  bl_x; int /*<<< orphan*/  fr_y; int /*<<< orphan*/  fr_x; int /*<<< orphan*/  fl_y; int /*<<< orphan*/  fl_x; int /*<<< orphan*/  lfe_mode; int /*<<< orphan*/  highcut; int /*<<< orphan*/  lowcut; int /*<<< orphan*/  output_lfe; TYPE_1__* output; } ;
struct TYPE_5__ {scalar_t__* extended_data; } ;
typedef  TYPE_2__ AudioSurroundContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 float FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float*,int /*<<< orphan*/ ) ; 
 float FUNC2 (float,int /*<<< orphan*/ ) ; 
 float FUNC3 (float) ; 

__attribute__((used)) static void FUNC4(AVFilterContext *ctx,
                                    float l_phase,
                                    float r_phase,
                                    float c_phase,
                                    float c_mag,
                                    float mag_total,
                                    float x, float y,
                                    int n)
{
    AudioSurroundContext *s = ctx->priv;
    float lfe_mag, l_mag, r_mag, *dstc, *dstl, *dstr, *dstlfe;
    float ls_mag, rs_mag, *dstls, *dstrs;

    dstl = (float *)s->output->extended_data[0];
    dstr = (float *)s->output->extended_data[1];
    dstc = (float *)s->output->extended_data[2];
    dstlfe = (float *)s->output->extended_data[3];
    dstls = (float *)s->output->extended_data[4];
    dstrs = (float *)s->output->extended_data[5];

    FUNC1(s->output_lfe, n, s->lowcut, s->highcut, &lfe_mag, &c_mag, s->lfe_mode);

    l_mag = FUNC2(.5f * ( x + 1.f),  s->fl_x) * FUNC2((y + 1.f) * .5f, s->fl_y) * mag_total;
    r_mag = FUNC2(.5f * (-x + 1.f),  s->fr_x) * FUNC2((y + 1.f) * .5f, s->fr_y) * mag_total;
    ls_mag = FUNC2(.5f * ( x + 1.f), s->bl_x) * FUNC2(1.f - ((y + 1.f) * .5f), s->bl_y) * mag_total;
    rs_mag = FUNC2(.5f * (-x + 1.f), s->br_x) * FUNC2(1.f - ((y + 1.f) * .5f), s->br_y) * mag_total;

    dstl[2 * n    ] = l_mag * FUNC0(l_phase);
    dstl[2 * n + 1] = l_mag * FUNC3(l_phase);

    dstr[2 * n    ] = r_mag * FUNC0(r_phase);
    dstr[2 * n + 1] = r_mag * FUNC3(r_phase);

    dstc[2 * n    ] = c_mag * FUNC0(c_phase);
    dstc[2 * n + 1] = c_mag * FUNC3(c_phase);

    dstlfe[2 * n    ] = lfe_mag * FUNC0(c_phase);
    dstlfe[2 * n + 1] = lfe_mag * FUNC3(c_phase);

    dstls[2 * n    ] = ls_mag * FUNC0(l_phase);
    dstls[2 * n + 1] = ls_mag * FUNC3(l_phase);

    dstrs[2 * n    ] = rs_mag * FUNC0(r_phase);
    dstrs[2 * n + 1] = rs_mag * FUNC3(r_phase);
}