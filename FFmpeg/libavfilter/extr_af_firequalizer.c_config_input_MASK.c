#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {int sample_rate; int channels; int min_samples; int max_samples; int partial_buf_size; TYPE_3__* dst; } ;
struct TYPE_10__ {int fir_len; int delay; int remaining; int rdft_len; int nsamples_max; int cepstrum_len; int analysis_rdft_len; int accuracy; scalar_t__ fixed; void* conv_idx; void* conv_buf; void* kernel_buf; void* kernel_tmp_buf; void* analysis_buf; scalar_t__ multi; void* dump_buf; void* analysis_rdft; scalar_t__ dumpfile; void* analysis_irdft; void* cepstrum_buf; void* cepstrum_irdft; void* cepstrum_rdft; scalar_t__ min_phase; int /*<<< orphan*/  fft_ctx; scalar_t__ fft2; void* irdft; void* rdft; scalar_t__ frame_nsamples_max; scalar_t__ next_pts; } ;
typedef  TYPE_1__ FIREqualizerContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  DFT_R2C ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  IDFT_C2R ; 
 int RDFT_BITS_MAX ; 
 int RDFT_BITS_MIN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC8 (int,int) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    FIREqualizerContext *s = ctx->priv;
    int rdft_bits;

    FUNC10(s);

    s->next_pts = 0;
    s->frame_nsamples_max = 0;

    s->fir_len = FUNC1(2 * (int)(inlink->sample_rate * s->delay) + 1, 3);
    s->remaining = s->fir_len - 1;

    for (rdft_bits = RDFT_BITS_MIN; rdft_bits <= RDFT_BITS_MAX; rdft_bits++) {
        s->rdft_len = 1 << rdft_bits;
        s->nsamples_max = s->rdft_len - s->fir_len + 1;
        if (s->nsamples_max * 2 >= s->fir_len)
            break;
    }

    if (rdft_bits > RDFT_BITS_MAX) {
        FUNC7(ctx, AV_LOG_ERROR, "too large delay, please decrease it.\n");
        return FUNC0(EINVAL);
    }

    if (!(s->rdft = FUNC9(rdft_bits, DFT_R2C)) || !(s->irdft = FUNC9(rdft_bits, IDFT_C2R)))
        return FUNC0(ENOMEM);

    if (s->fft2 && !s->multi && inlink->channels > 1 && !(s->fft_ctx = FUNC6(rdft_bits, 0)))
        return FUNC0(ENOMEM);

    if (s->min_phase) {
        int cepstrum_bits = rdft_bits + 2;
        if (cepstrum_bits > RDFT_BITS_MAX) {
            FUNC7(ctx, AV_LOG_ERROR, "too large delay, please decrease it.\n");
            return FUNC0(EINVAL);
        }

        cepstrum_bits = FUNC2(RDFT_BITS_MAX, cepstrum_bits + 1);
        s->cepstrum_rdft = FUNC9(cepstrum_bits, DFT_R2C);
        s->cepstrum_irdft = FUNC9(cepstrum_bits, IDFT_C2R);
        if (!s->cepstrum_rdft || !s->cepstrum_irdft)
            return FUNC0(ENOMEM);

        s->cepstrum_len = 1 << cepstrum_bits;
        s->cepstrum_buf = FUNC8(s->cepstrum_len, sizeof(*s->cepstrum_buf));
        if (!s->cepstrum_buf)
            return FUNC0(ENOMEM);
    }

    for ( ; rdft_bits <= RDFT_BITS_MAX; rdft_bits++) {
        s->analysis_rdft_len = 1 << rdft_bits;
        if (inlink->sample_rate <= s->accuracy * s->analysis_rdft_len)
            break;
    }

    if (rdft_bits > RDFT_BITS_MAX) {
        FUNC7(ctx, AV_LOG_ERROR, "too small accuracy, please increase it.\n");
        return FUNC0(EINVAL);
    }

    if (!(s->analysis_irdft = FUNC9(rdft_bits, IDFT_C2R)))
        return FUNC0(ENOMEM);

    if (s->dumpfile) {
        s->analysis_rdft = FUNC9(rdft_bits, DFT_R2C);
        s->dump_buf = FUNC8(s->analysis_rdft_len, sizeof(*s->dump_buf));
    }

    s->analysis_buf = FUNC8(s->analysis_rdft_len, sizeof(*s->analysis_buf));
    s->kernel_tmp_buf = FUNC8(s->rdft_len * (s->multi ? inlink->channels : 1), sizeof(*s->kernel_tmp_buf));
    s->kernel_buf = FUNC8(s->rdft_len * (s->multi ? inlink->channels : 1), sizeof(*s->kernel_buf));
    s->conv_buf   = FUNC5(2 * s->rdft_len * inlink->channels, sizeof(*s->conv_buf));
    s->conv_idx   = FUNC5(inlink->channels, sizeof(*s->conv_idx));
    if (!s->analysis_buf || !s->kernel_tmp_buf || !s->kernel_buf || !s->conv_buf || !s->conv_idx)
        return FUNC0(ENOMEM);

    FUNC7(ctx, AV_LOG_DEBUG, "sample_rate = %d, channels = %d, analysis_rdft_len = %d, rdft_len = %d, fir_len = %d, nsamples_max = %d.\n",
           inlink->sample_rate, inlink->channels, s->analysis_rdft_len, s->rdft_len, s->fir_len, s->nsamples_max);

    if (s->fixed)
        inlink->min_samples = inlink->max_samples = inlink->partial_buf_size = s->nsamples_max;

    return FUNC11(ctx, FUNC3(s), FUNC4(s));
}