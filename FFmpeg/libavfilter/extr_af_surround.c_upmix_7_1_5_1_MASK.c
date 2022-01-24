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
struct TYPE_6__ {int /*<<< orphan*/  sr_y; int /*<<< orphan*/  sr_x; int /*<<< orphan*/  sl_y; int /*<<< orphan*/  sl_x; int /*<<< orphan*/  br_y; int /*<<< orphan*/  br_x; int /*<<< orphan*/  bl_y; int /*<<< orphan*/  bl_x; int /*<<< orphan*/  fr_y; int /*<<< orphan*/  fr_x; int /*<<< orphan*/  fl_y; int /*<<< orphan*/  fl_x; TYPE_1__* output; } ;
struct TYPE_5__ {scalar_t__* extended_data; } ;
typedef  TYPE_2__ AudioSurroundContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float,int /*<<< orphan*/ ) ; 
 float FUNC3 (float) ; 

__attribute__((used)) static void FUNC4(AVFilterContext *ctx,
                          float c_re, float c_im,
                          float lfe_re, float lfe_im,
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
    AudioSurroundContext *s = ctx->priv;

    dstl  = (float *)s->output->extended_data[0];
    dstr  = (float *)s->output->extended_data[1];
    dstc  = (float *)s->output->extended_data[2];
    dstlfe = (float *)s->output->extended_data[3];
    dstlb = (float *)s->output->extended_data[4];
    dstrb = (float *)s->output->extended_data[5];
    dstls = (float *)s->output->extended_data[6];
    dstrs = (float *)s->output->extended_data[7];

    fl_mag = FUNC2(.5f * (xl + 1.f), s->fl_x) * FUNC2((yl + 1.f) * .5f, s->fl_y) * mag_totall;
    fr_mag = FUNC2(.5f * (xr + 1.f), s->fr_x) * FUNC2((yr + 1.f) * .5f, s->fr_y) * mag_totalr;
    lb_mag = FUNC2(.5f * (-xl + 1.f), s->bl_x) * FUNC2((yl + 1.f) * .5f, s->bl_y) * mag_totall;
    rb_mag = FUNC2(.5f * (-xr + 1.f), s->br_x) * FUNC2((yr + 1.f) * .5f, s->br_y) * mag_totalr;
    ls_mag = FUNC2(1.f - FUNC1(xl), s->sl_x) * FUNC2((yl + 1.f) * .5f, s->sl_y) * mag_totall;
    rs_mag = FUNC2(1.f - FUNC1(xr), s->sr_x) * FUNC2((yr + 1.f) * .5f, s->sr_y) * mag_totalr;

    dstl[2 * n    ] = fl_mag * FUNC0(fl_phase);
    dstl[2 * n + 1] = fl_mag * FUNC3(fl_phase);

    dstr[2 * n    ] = fr_mag * FUNC0(fr_phase);
    dstr[2 * n + 1] = fr_mag * FUNC3(fr_phase);

    dstc[2 * n    ] = c_re;
    dstc[2 * n + 1] = c_im;

    dstlfe[2 * n    ] = lfe_re;
    dstlfe[2 * n + 1] = lfe_im;

    dstlb[2 * n    ] = lb_mag * FUNC0(bl_phase);
    dstlb[2 * n + 1] = lb_mag * FUNC3(bl_phase);

    dstrb[2 * n    ] = rb_mag * FUNC0(br_phase);
    dstrb[2 * n + 1] = rb_mag * FUNC3(br_phase);

    dstls[2 * n    ] = ls_mag * FUNC0(sl_phase);
    dstls[2 * n + 1] = ls_mag * FUNC3(sl_phase);

    dstrs[2 * n    ] = rs_mag * FUNC0(sr_phase);
    dstrs[2 * n + 1] = rs_mag * FUNC3(sr_phase);
}