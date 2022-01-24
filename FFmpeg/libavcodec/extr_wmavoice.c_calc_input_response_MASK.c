#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  coeffs ;
struct TYPE_8__ {int /*<<< orphan*/  (* rdft_calc ) (TYPE_2__*,float*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* dct_calc ) (TYPE_3__*,float*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  (* dct_calc ) (TYPE_4__*,float*) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  (* rdft_calc ) (TYPE_5__*,float*) ;} ;
struct TYPE_7__ {size_t denoise_strength; float* cos; float* sin; scalar_t__ denoise_tilt_corr; TYPE_2__ irdft; TYPE_3__ dst; TYPE_4__ dct; TYPE_5__ rdft; } ;
typedef  TYPE_1__ WMAVoiceContext ;

/* Variables and functions */
 int FCB_TYPE_HARDCODED ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 double M_LN10 ; 
 double M_PI ; 
 int FUNC1 (float,int,int) ; 
 int FUNC2 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,double,float*,int) ; 
 int /*<<< orphan*/  FUNC4 (float,float) ; 
 int FUNC5 (float) ; 
 int /*<<< orphan*/  FUNC6 (float*,int /*<<< orphan*/ ,int) ; 
 float FUNC7 (double,int) ; 
 double FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,float*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,float*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,float*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,float*) ; 
 double FUNC13 (float*,int) ; 
 float** wmavoice_denoise_power_table ; 
 float* wmavoice_energy_table ; 

__attribute__((used)) static void FUNC14(WMAVoiceContext *s, float *lpcs,
                                int fcb_type, float *coeffs, int remainder)
{
    float last_coeff, min = 15.0, max = -15.0;
    float irange, angle_mul, gain_mul, range, sq;
    int n, idx;

    /* Create frequency power spectrum of speech input (i.e. RDFT of LPCs) */
    s->rdft.rdft_calc(&s->rdft, lpcs);
#define log_range(var, assign) do { \
        float tmp = log10f(assign);  var = tmp; \
        max       = FFMAX(max, tmp); min = FFMIN(min, tmp); \
    } while (0)
    log_range(last_coeff,  lpcs[1]         * lpcs[1]);
    for (n = 1; n < 64; n++)
        log_range(lpcs[n], lpcs[n * 2]     * lpcs[n * 2] +
                           lpcs[n * 2 + 1] * lpcs[n * 2 + 1]);
    log_range(lpcs[0],     lpcs[0]         * lpcs[0]);
#undef log_range
    range    = max - min;
    lpcs[64] = last_coeff;

    /* Now, use this spectrum to pick out these frequencies with higher
     * (relative) power/energy (which we then take to be "not noise"),
     * and set up a table (still in lpc[]) of (relative) gains per frequency.
     * These frequencies will be maintained, while others ("noise") will be
     * decreased in the filter output. */
    irange    = 64.0 / range; // so irange*(max-value) is in the range [0, 63]
    gain_mul  = range * (fcb_type == FCB_TYPE_HARDCODED ? (5.0 / 13.0) :
                                                          (5.0 / 14.7));
    angle_mul = gain_mul * (8.0 * M_LN10 / M_PI);
    for (n = 0; n <= 64; n++) {
        float pwr;

        idx = FUNC0(0, FUNC5((max - lpcs[n]) * irange) - 1);
        pwr = wmavoice_denoise_power_table[s->denoise_strength][idx];
        lpcs[n] = angle_mul * pwr;

        /* 70.57 =~ 1/log10(1.0331663) */
        idx = (pwr * gain_mul - 0.0295) * 70.570526123;
        if (idx > 127) { // fall back if index falls outside table range
            coeffs[n] = wmavoice_energy_table[127] *
                        FUNC7(1.0331663, idx - 127);
        } else
            coeffs[n] = wmavoice_energy_table[FUNC0(0, idx)];
    }

    /* calculate the Hilbert transform of the gains, which we do (since this
     * is a sine input) by doing a phase shift (in theory, H(sin())=cos()).
     * Hilbert_Transform(RDFT(x)) = Laplace_Transform(x), which calculates the
     * "moment" of the LPCs in this filter. */
    s->dct.dct_calc(&s->dct, lpcs);
    s->dst.dct_calc(&s->dst, lpcs);

    /* Split out the coefficient indexes into phase/magnitude pairs */
    idx = 255 + FUNC1(lpcs[64],               -255, 255);
    coeffs[0]  = coeffs[0]  * s->cos[idx];
    idx = 255 + FUNC1(lpcs[64] - 2 * lpcs[63], -255, 255);
    last_coeff = coeffs[64] * s->cos[idx];
    for (n = 63;; n--) {
        idx = 255 + FUNC1(-lpcs[64] - 2 * lpcs[n - 1], -255, 255);
        coeffs[n * 2 + 1] = coeffs[n] * s->sin[idx];
        coeffs[n * 2]     = coeffs[n] * s->cos[idx];

        if (!--n) break;

        idx = 255 + FUNC1( lpcs[64] - 2 * lpcs[n - 1], -255, 255);
        coeffs[n * 2 + 1] = coeffs[n] * s->sin[idx];
        coeffs[n * 2]     = coeffs[n] * s->cos[idx];
    }
    coeffs[1] = last_coeff;

    /* move into real domain */
    s->irdft.rdft_calc(&s->irdft, coeffs);

    /* tilt correction and normalize scale */
    FUNC6(&coeffs[remainder], 0, sizeof(coeffs[0]) * (128 - remainder));
    if (s->denoise_tilt_corr) {
        float tilt_mem = 0;

        coeffs[remainder - 1] = 0;
        FUNC3(&tilt_mem,
                             -1.8 * FUNC13(coeffs, remainder - 1),
                             coeffs, remainder);
    }
    sq = (1.0 / 64.0) * FUNC8(1 / FUNC2(coeffs, coeffs,
                                                               remainder));
    for (n = 0; n < remainder; n++)
        coeffs[n] *= sq;
}