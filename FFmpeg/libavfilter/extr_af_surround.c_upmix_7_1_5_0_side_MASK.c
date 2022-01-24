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
struct TYPE_6__ {int /*<<< orphan*/  sr_y; int /*<<< orphan*/  sr_x; int /*<<< orphan*/  sl_y; int /*<<< orphan*/  sl_x; int /*<<< orphan*/  br_y; int /*<<< orphan*/  br_x; int /*<<< orphan*/  bl_y; int /*<<< orphan*/  bl_x; int /*<<< orphan*/  fr_y; int /*<<< orphan*/  fr_x; int /*<<< orphan*/  fl_y; int /*<<< orphan*/  fl_x; int /*<<< orphan*/  lfe_mode; int /*<<< orphan*/  highcut; int /*<<< orphan*/  lowcut; int /*<<< orphan*/  output_lfe; TYPE_1__* output; } ;
struct TYPE_5__ {scalar_t__* extended_data; } ;
typedef  TYPE_2__ AudioSurroundContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 float FUNC0 (float,float) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float*,int /*<<< orphan*/ ) ; 
 float FUNC4 (float,int /*<<< orphan*/ ) ; 
 float FUNC5 (float) ; 

__attribute__((used)) static void FUNC6(AVFilterContext *ctx,
                               float c_re, float c_im,
                               float mag_totall, float mag_totalr,
                               float fl_phase, float fr_phase,
                               float bl_phase, float br_phase,
                               float sl_phase, float sr_phase,
                               float xl, float yl,
                               float xr, float yr,
                               int n)
{
    float fl_mag, fr_mag, ls_mag, rs_mag, lb_mag, rb_mag;
    float *dstc, *dstl, *dstr, *dstls, *dstrs, *dstlb, *dstrb, *dstlfe;
    float lfe_mag, c_phase, mag_total = (mag_totall + mag_totalr) * 0.5;
    AudioSurroundContext *s = ctx->priv;

    dstl  = (float *)s->output->extended_data[0];
    dstr  = (float *)s->output->extended_data[1];
    dstc  = (float *)s->output->extended_data[2];
    dstlfe = (float *)s->output->extended_data[3];
    dstlb = (float *)s->output->extended_data[4];
    dstrb = (float *)s->output->extended_data[5];
    dstls = (float *)s->output->extended_data[6];
    dstrs = (float *)s->output->extended_data[7];

    c_phase = FUNC0(c_im, c_re);

    FUNC3(s->output_lfe, n, s->lowcut, s->highcut, &lfe_mag, &mag_total, s->lfe_mode);

    fl_mag = FUNC4(.5f * (xl + 1.f), s->fl_x) * FUNC4((yl + 1.f) * .5f, s->fl_y) * mag_totall;
    fr_mag = FUNC4(.5f * (xr + 1.f), s->fr_x) * FUNC4((yr + 1.f) * .5f, s->fr_y) * mag_totalr;
    lb_mag = FUNC4(.5f * (-xl + 1.f), s->bl_x) * FUNC4((yl + 1.f) * .5f, s->bl_y) * mag_totall;
    rb_mag = FUNC4(.5f * (-xr + 1.f), s->br_x) * FUNC4((yr + 1.f) * .5f, s->br_y) * mag_totalr;
    ls_mag = FUNC4(1.f - FUNC2(xl), s->sl_x) * FUNC4((yl + 1.f) * .5f, s->sl_y) * mag_totall;
    rs_mag = FUNC4(1.f - FUNC2(xr), s->sr_x) * FUNC4((yr + 1.f) * .5f, s->sr_y) * mag_totalr;

    dstl[2 * n    ] = fl_mag * FUNC1(fl_phase);
    dstl[2 * n + 1] = fl_mag * FUNC5(fl_phase);

    dstr[2 * n    ] = fr_mag * FUNC1(fr_phase);
    dstr[2 * n + 1] = fr_mag * FUNC5(fr_phase);

    dstc[2 * n    ] = c_re;
    dstc[2 * n + 1] = c_im;

    dstlfe[2 * n    ] = lfe_mag * FUNC1(c_phase);
    dstlfe[2 * n + 1] = lfe_mag * FUNC5(c_phase);

    dstlb[2 * n    ] = lb_mag * FUNC1(bl_phase);
    dstlb[2 * n + 1] = lb_mag * FUNC5(bl_phase);

    dstrb[2 * n    ] = rb_mag * FUNC1(br_phase);
    dstrb[2 * n + 1] = rb_mag * FUNC5(br_phase);

    dstls[2 * n    ] = ls_mag * FUNC1(sl_phase);
    dstls[2 * n + 1] = ls_mag * FUNC5(sl_phase);

    dstrs[2 * n    ] = rs_mag * FUNC1(sr_phase);
    dstrs[2 * n + 1] = rs_mag * FUNC5(sr_phase);
}