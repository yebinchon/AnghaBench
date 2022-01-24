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
struct TYPE_7__ {int buf_size; int /*<<< orphan*/  (* upmix_2_1 ) (TYPE_3__*,float,float,float,float,float,float,float,float,int) ;int /*<<< orphan*/  angle; TYPE_1__* input; } ;
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
 int /*<<< orphan*/  FUNC5 (float*,float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,float,float,float,float,float,float,float,float,int) ; 

__attribute__((used)) static void FUNC7(AVFilterContext *ctx)
{
    AudioSurroundContext *s = ctx->priv;
    float *srcl, *srcr, *srclfe;
    int n;

    srcl = (float *)s->input->extended_data[0];
    srcr = (float *)s->input->extended_data[1];
    srclfe = (float *)s->input->extended_data[2];

    for (n = 0; n < s->buf_size; n++) {
        float l_re = srcl[2 * n], r_re = srcr[2 * n];
        float l_im = srcl[2 * n + 1], r_im = srcr[2 * n + 1];
        float lfe_re = srclfe[2 * n], lfe_im = srclfe[2 * n + 1];
        float c_phase = FUNC1(l_im + r_im, l_re + r_re);
        float l_mag = FUNC3(l_re, l_im);
        float r_mag = FUNC3(r_re, r_im);
        float l_phase = FUNC1(l_im, l_re);
        float r_phase = FUNC1(r_im, r_re);
        float phase_dif = FUNC2(l_phase - r_phase);
        float mag_sum = l_mag + r_mag;
        float mag_dif = mag_sum < 0.000001 ? FUNC0(l_mag, r_mag) : (l_mag - r_mag) / mag_sum;
        float mag_total = FUNC3(l_mag, r_mag);
        float x, y;

        if (phase_dif > M_PI)
            phase_dif = 2 * M_PI - phase_dif;

        FUNC4(mag_dif, phase_dif, &x, &y);
        FUNC5(&x, &y, s->angle);

        s->upmix_2_1(ctx, l_phase, r_phase, c_phase, mag_total, lfe_re, lfe_im, x, y, n);
    }
}