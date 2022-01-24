#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {int buf_size; int /*<<< orphan*/  (* upmix_5_1 ) (TYPE_3__*,float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,int) ;TYPE_1__* input; } ;
struct TYPE_6__ {scalar_t__* extended_data; } ;
typedef  TYPE_2__ AudioSurroundContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 float FUNC0 (float,float) ; 
 float M_PI ; 
 float FUNC1 (float,float) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float,float) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,float,int) ; 

__attribute__((used)) static void FUNC6(AVFilterContext *ctx)
{
    AudioSurroundContext *s = ctx->priv;
    float *srcl, *srcr, *srcc, *srclfe, *srcsl, *srcsr;
    int n;

    srcl = (float *)s->input->extended_data[0];
    srcr = (float *)s->input->extended_data[1];
    srcc = (float *)s->input->extended_data[2];
    srclfe = (float *)s->input->extended_data[3];
    srcsl = (float *)s->input->extended_data[4];
    srcsr = (float *)s->input->extended_data[5];

    for (n = 0; n < s->buf_size; n++) {
        float fl_re = srcl[2 * n], fr_re = srcr[2 * n];
        float fl_im = srcl[2 * n + 1], fr_im = srcr[2 * n + 1];
        float c_re = srcc[2 * n], c_im = srcc[2 * n + 1];
        float lfe_re = srclfe[2 * n], lfe_im = srclfe[2 * n + 1];
        float sl_re = srcsl[2 * n], sl_im = srcsl[2 * n + 1];
        float sr_re = srcsr[2 * n], sr_im = srcsr[2 * n + 1];
        float fl_mag = FUNC3(fl_re, fl_im);
        float fr_mag = FUNC3(fr_re, fr_im);
        float fl_phase = FUNC1(fl_im, fl_re);
        float fr_phase = FUNC1(fr_im, fr_re);
        float sl_mag = FUNC3(sl_re, sl_im);
        float sr_mag = FUNC3(sr_re, sr_im);
        float sl_phase = FUNC1(sl_im, sl_re);
        float sr_phase = FUNC1(sr_im, sr_re);
        float phase_difl = FUNC2(fl_phase - sl_phase);
        float phase_difr = FUNC2(fr_phase - sr_phase);
        float magl_sum = fl_mag + sl_mag;
        float magr_sum = fr_mag + sr_mag;
        float mag_difl = magl_sum < 0.000001 ? FUNC0(fl_mag, sl_mag) : (fl_mag - sl_mag) / magl_sum;
        float mag_difr = magr_sum < 0.000001 ? FUNC0(fr_mag, sr_mag) : (fr_mag - sr_mag) / magr_sum;
        float mag_totall = FUNC3(fl_mag, sl_mag);
        float mag_totalr = FUNC3(fr_mag, sr_mag);
        float bl_phase = FUNC1(fl_im + sl_im, fl_re + sl_re);
        float br_phase = FUNC1(fr_im + sr_im, fr_re + sr_re);
        float xl, yl;
        float xr, yr;

        if (phase_difl > M_PI)
            phase_difl = 2 * M_PI - phase_difl;

        if (phase_difr > M_PI)
            phase_difr = 2 * M_PI - phase_difr;

        FUNC4(mag_difl, phase_difl, &xl, &yl);
        FUNC4(mag_difr, phase_difr, &xr, &yr);

        s->upmix_5_1(ctx, c_re, c_im, lfe_re, lfe_im,
                     mag_totall, mag_totalr,
                     fl_phase, fr_phase,
                     bl_phase, br_phase,
                     sl_phase, sr_phase,
                     xl, yl, xr, yr, n);
    }
}