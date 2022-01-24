#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int lsps; size_t lsp_def_mode; float* synth_history; float* excitation_history; int history_nsamples; scalar_t__ sframe_cache_size; double const* prev_lsps; int /*<<< orphan*/ * zero_exc_pf; scalar_t__ do_apf; scalar_t__ has_residual_lsps; int /*<<< orphan*/  lsp_q_mode; int /*<<< orphan*/  sframe_cache; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ WMAVoiceContext ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int nb_samples; scalar_t__* data; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MAX_FRAMES ; 
 int MAX_FRAMESIZE ; 
 int MAX_LSPS ; 
 int MAX_SFRAMESIZE ; 
 int /*<<< orphan*/  MAX_SIGNAL_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double*,double*,double*,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,double*,double*,double*,double*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (float*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (double*,int) ; 
 int FUNC16 (TYPE_3__*,int /*<<< orphan*/ *,int,float*,double*,double*,float*,float*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 double** wmavoice_mean_lsf10 ; 
 double** wmavoice_mean_lsf16 ; 

__attribute__((used)) static int FUNC18(AVCodecContext *ctx, AVFrame *frame,
                            int *got_frame_ptr)
{
    WMAVoiceContext *s = ctx->priv_data;
    GetBitContext *gb = &s->gb, s_gb;
    int n, res, n_samples = MAX_SFRAMESIZE;
    double lsps[MAX_FRAMES][MAX_LSPS];
    const double *mean_lsf = s->lsps == 16 ?
        wmavoice_mean_lsf16[s->lsp_def_mode] : wmavoice_mean_lsf10[s->lsp_def_mode];
    float excitation[MAX_SIGNAL_HISTORY + MAX_SFRAMESIZE + 12];
    float synth[MAX_LSPS + MAX_SFRAMESIZE];
    float *samples;

    FUNC12(synth,      s->synth_history,
           s->lsps             * sizeof(*synth));
    FUNC12(excitation, s->excitation_history,
           s->history_nsamples * sizeof(*excitation));

    if (s->sframe_cache_size > 0) {
        gb = &s_gb;
        FUNC11(gb, s->sframe_cache, s->sframe_cache_size);
        s->sframe_cache_size = 0;
    }

    /* First bit is speech/music bit, it differentiates between WMAVoice
     * speech samples (the actual codec) and WMAVoice music samples, which
     * are really WMAPro-in-WMAVoice-superframes. I've never seen those in
     * the wild yet. */
    if (!FUNC9(gb)) {
        FUNC2(ctx, "WMAPro-in-WMAVoice");
        return AVERROR_PATCHWELCOME;
    }

    /* (optional) nr. of samples in superframe; always <= 480 and >= 0 */
    if (FUNC9(gb)) {
        if ((n_samples = FUNC8(gb, 12)) > MAX_SFRAMESIZE) {
            FUNC1(ctx, AV_LOG_ERROR,
                   "Superframe encodes > %d samples (%d), not allowed\n",
                   MAX_SFRAMESIZE, n_samples);
            return AVERROR_INVALIDDATA;
        }
    }

    /* Parse LSPs, if global for the superframe (can also be per-frame). */
    if (s->has_residual_lsps) {
        double prev_lsps[MAX_LSPS], a1[MAX_LSPS * 2], a2[MAX_LSPS * 2];

        for (n = 0; n < s->lsps; n++)
            prev_lsps[n] = s->prev_lsps[n] - mean_lsf[n];

        if (s->lsps == 10) {
            FUNC4(gb, lsps[2], prev_lsps, a1, a2, s->lsp_q_mode);
        } else /* s->lsps == 16 */
            FUNC6(gb, lsps[2], prev_lsps, a1, a2, s->lsp_q_mode);

        for (n = 0; n < s->lsps; n++) {
            lsps[0][n]  = mean_lsf[n] + (a1[n]           - a2[n * 2]);
            lsps[1][n]  = mean_lsf[n] + (a1[s->lsps + n] - a2[n * 2 + 1]);
            lsps[2][n] += mean_lsf[n];
        }
        for (n = 0; n < 3; n++)
            FUNC15(lsps[n], s->lsps);
    }

    /* synth_superframe can run multiple times per packet
     * free potential previous frame */
    FUNC0(frame);

    /* get output buffer */
    frame->nb_samples = MAX_SFRAMESIZE;
    if ((res = FUNC7(ctx, frame, 0)) < 0)
        return res;
    frame->nb_samples = n_samples;
    samples = (float *)frame->data[0];

    /* Parse frames, optionally preceded by per-frame (independent) LSPs. */
    for (n = 0; n < 3; n++) {
        if (!s->has_residual_lsps) {
            int m;

            if (s->lsps == 10) {
                FUNC3(gb, lsps[n]);
            } else /* s->lsps == 16 */
                FUNC5(gb, lsps[n]);

            for (m = 0; m < s->lsps; m++)
                lsps[n][m] += mean_lsf[m];
            FUNC15(lsps[n], s->lsps);
        }

        if ((res = FUNC16(ctx, gb, n,
                               &samples[n * MAX_FRAMESIZE],
                               lsps[n], n == 0 ? s->prev_lsps : lsps[n - 1],
                               &excitation[s->history_nsamples + n * MAX_FRAMESIZE],
                               &synth[s->lsps + n * MAX_FRAMESIZE]))) {
            *got_frame_ptr = 0;
            return res;
        }
    }

    /* Statistics? FIXME - we don't check for length, a slight overrun
     * will be caught by internal buffer padding, and anything else
     * will be skipped, not read. */
    if (FUNC9(gb)) {
        res = FUNC8(gb, 4);
        FUNC14(gb, 10 * (res + 1));
    }

    if (FUNC10(gb) < 0) {
        FUNC17(ctx);
        return AVERROR_INVALIDDATA;
    }

    *got_frame_ptr = 1;

    /* Update history */
    FUNC12(s->prev_lsps,           lsps[2],
           s->lsps             * sizeof(*s->prev_lsps));
    FUNC12(s->synth_history,      &synth[MAX_SFRAMESIZE],
           s->lsps             * sizeof(*synth));
    FUNC12(s->excitation_history, &excitation[MAX_SFRAMESIZE],
           s->history_nsamples * sizeof(*excitation));
    if (s->do_apf)
        FUNC13(s->zero_exc_pf,       &s->zero_exc_pf[MAX_SFRAMESIZE],
                s->history_nsamples * sizeof(*s->zero_exc_pf));

    return 0;
}