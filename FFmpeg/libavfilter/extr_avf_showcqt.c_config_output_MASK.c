#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_1__* priv; TYPE_2__** inputs; } ;
struct TYPE_16__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_19__ {int w; scalar_t__ format; int sample_rate; int /*<<< orphan*/  time_base; TYPE_13__ frame_rate; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  h; TYPE_3__* src; } ;
struct TYPE_17__ {int num; int den; } ;
struct TYPE_18__ {int width; scalar_t__ format; int cqt_len; int fcount; int fft_bits; int timeclamp; int fft_len; int remaining_fill_max; double attack; double* attack_data; int cqt_align; int remaining_fill; int count; int step; TYPE_14__ step_frac; TYPE_13__ rate; scalar_t__ remaining_frac; scalar_t__ sono_idx; scalar_t__ next_pts; scalar_t__ sono_count; void* c_buf; void* rcp_h_buf; void* h_buf; int /*<<< orphan*/  sono_frame; scalar_t__ sono_h; scalar_t__ axisfile; int /*<<< orphan*/  axis; scalar_t__ axis_h; int /*<<< orphan*/  update_sono; int /*<<< orphan*/  draw_axis; int /*<<< orphan*/  draw_bar; int /*<<< orphan*/  draw_sono; int /*<<< orphan*/ * permute_coeffs; int /*<<< orphan*/  cqt_calc; void* cqt_result; void* fft_result; void* fft_data; int /*<<< orphan*/  fft_ctx; int /*<<< orphan*/  endfreq; int /*<<< orphan*/  basefreq; int /*<<< orphan*/  freq; int /*<<< orphan*/  bar_h; int /*<<< orphan*/  height; } ;
typedef  TYPE_1__ ShowCQTContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_PIX_FMT_RGB24 ; 
 scalar_t__ AV_PIX_FMT_YUV420P ; 
 scalar_t__ AV_PIX_FMT_YUV422P ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int M_PI ; 
 int PTS_STEP ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,scalar_t__) ; 
 void* FUNC4 (int,int) ; 
 TYPE_14__ FUNC5 (int /*<<< orphan*/ ,TYPE_13__) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_13__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 void* FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 double FUNC15 (int) ; 
 int /*<<< orphan*/  cqt_calc ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  draw_axis_rgb ; 
 int /*<<< orphan*/  draw_axis_yuv ; 
 int /*<<< orphan*/  draw_bar_rgb ; 
 int /*<<< orphan*/  draw_bar_yuv ; 
 int /*<<< orphan*/  draw_sono ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 scalar_t__ FUNC20 (TYPE_1__*) ; 
 int FUNC21 (TYPE_1__*) ; 
 int FUNC22 (TYPE_1__*) ; 
 int FUNC23 (int) ; 
 int /*<<< orphan*/  update_sono_rgb ; 
 int /*<<< orphan*/  update_sono_yuv ; 

__attribute__((used)) static int FUNC24(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];
    ShowCQTContext *s = ctx->priv;
    int ret;

    FUNC14(s);

    outlink->w = s->width;
    outlink->h = s->height;
    s->format = outlink->format;
    outlink->sample_aspect_ratio = FUNC10(1, 1);
    outlink->frame_rate = s->rate;
    outlink->time_base = FUNC12(FUNC8(s->rate), FUNC10(1, PTS_STEP));
    FUNC9(ctx, AV_LOG_INFO, "video: %dx%d %s %d/%d fps, bar_h = %d, axis_h = %d, sono_h = %d.\n",
           s->width, s->height, FUNC7(s->format), s->rate.num, s->rate.den,
           s->bar_h, s->axis_h, s->sono_h);

    s->cqt_len = s->width * s->fcount;
    if (!(s->freq = FUNC16(s->basefreq, s->endfreq, s->cqt_len)))
        return FUNC0(ENOMEM);

    if ((ret = FUNC22(s)) < 0)
        return ret;

    s->fft_bits = FUNC1(FUNC13(FUNC23(inlink->sample_rate * s->timeclamp)), 4);
    s->fft_len = 1 << s->fft_bits;
    FUNC9(ctx, AV_LOG_INFO, "fft_len = %d, cqt_len = %d.\n", s->fft_len, s->cqt_len);

    s->fft_ctx = FUNC6(s->fft_bits, 0);
    s->fft_data = FUNC4(s->fft_len, sizeof(*s->fft_data));
    s->fft_result = FUNC4(s->fft_len + 64, sizeof(*s->fft_result));
    s->cqt_result = FUNC11(s->cqt_len, sizeof(*s->cqt_result));
    if (!s->fft_ctx || !s->fft_data || !s->fft_result || !s->cqt_result)
        return FUNC0(ENOMEM);

    s->remaining_fill_max = s->fft_len / 2;
    if (s->attack > 0.0) {
        int k;

        s->remaining_fill_max = FUNC2(s->remaining_fill_max, FUNC13(inlink->sample_rate * s->attack));
        s->attack_data = FUNC11(s->remaining_fill_max, sizeof(*s->attack_data));
        if (!s->attack_data)
            return FUNC0(ENOMEM);

        for (k = 0; k < s->remaining_fill_max; k++) {
            double y = M_PI * k / (inlink->sample_rate * s->attack);
            s->attack_data[k] = 0.355768 + 0.487396 * FUNC15(y) + 0.144232 * FUNC15(2*y) + 0.012604 * FUNC15(3*y);
        }
    }

    s->cqt_align = 1;
    s->cqt_calc = cqt_calc;
    s->permute_coeffs = NULL;
    s->draw_sono = draw_sono;
    if (s->format == AV_PIX_FMT_RGB24) {
        s->draw_bar = draw_bar_rgb;
        s->draw_axis = draw_axis_rgb;
        s->update_sono = update_sono_rgb;
    } else {
        s->draw_bar = draw_bar_yuv;
        s->draw_axis = draw_axis_yuv;
        s->update_sono = update_sono_yuv;
    }

    if (ARCH_X86)
        FUNC17(s);

    if ((ret = FUNC21(s)) < 0)
        return ret;

    if (s->axis_h) {
        if (!s->axis) {
            if ((ret = FUNC18(s)) < 0)
                return ret;
        } else if (s->axisfile) {
            if (FUNC19(s) < 0) {
                FUNC9(ctx, AV_LOG_WARNING, "loading axis image failed, fallback to font rendering.\n");
                if (FUNC20(s) < 0) {
                    FUNC9(ctx, AV_LOG_WARNING, "loading axis font failed, disable text drawing.\n");
                    if ((ret = FUNC18(s)) < 0)
                        return ret;
                }
            }
        } else {
            if (FUNC20(s) < 0) {
                FUNC9(ctx, AV_LOG_WARNING, "loading axis font failed, disable text drawing.\n");
                if ((ret = FUNC18(s)) < 0)
                    return ret;
            }
        }
    }

    if (s->sono_h) {
        s->sono_frame = FUNC3((outlink->format == AV_PIX_FMT_YUV420P) ?
                        AV_PIX_FMT_YUV422P : outlink->format, s->width, s->sono_h);
        if (!s->sono_frame)
            return FUNC0(ENOMEM);
    }

    s->h_buf = FUNC11(s->cqt_len, sizeof (*s->h_buf));
    s->rcp_h_buf = FUNC11(s->width, sizeof(*s->rcp_h_buf));
    s->c_buf = FUNC11(s->width, sizeof(*s->c_buf));
    if (!s->h_buf || !s->rcp_h_buf || !s->c_buf)
        return FUNC0(ENOMEM);

    s->sono_count = 0;
    s->next_pts = 0;
    s->sono_idx = 0;
    s->remaining_fill = s->remaining_fill_max;
    s->remaining_frac = 0;
    s->step_frac = FUNC5(FUNC10(inlink->sample_rate, s->count) , s->rate);
    s->step = (int)(s->step_frac.num / s->step_frac.den);
    s->step_frac.num %= s->step_frac.den;
    if (s->step_frac.num) {
        FUNC9(ctx, AV_LOG_INFO, "audio: %d Hz, step = %d + %d/%d.\n",
               inlink->sample_rate, s->step, s->step_frac.num, s->step_frac.den);
        FUNC9(ctx, AV_LOG_WARNING, "fractional step.\n");
    } else {
        FUNC9(ctx, AV_LOG_INFO, "audio: %d Hz, step = %d.\n",
               inlink->sample_rate, s->step);
    }

    return 0;
}