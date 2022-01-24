#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/ * outputs; TYPE_3__** inputs; TYPE_2__* priv; } ;
struct TYPE_17__ {int channels; int format; TYPE_4__* src; } ;
struct TYPE_16__ {int channels; int format; int process; int /*<<< orphan*/  iir_channel; TYPE_1__* iir; int /*<<< orphan*/  video; int /*<<< orphan*/  h; int /*<<< orphan*/  w; scalar_t__ response; int /*<<< orphan*/  b_str; int /*<<< orphan*/  a_str; int /*<<< orphan*/  g_str; } ;
struct TYPE_15__ {int* nb_ab; int** ab; int g; } ;
typedef  TYPE_1__ IIRChannel ;
typedef  TYPE_2__ AudioIIRContext ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  AV_SAMPLE_FMT_DBLP 131 
#define  AV_SAMPLE_FMT_FLTP 130 
#define  AV_SAMPLE_FMT_S16P 129 
#define  AV_SAMPLE_FMT_S32P 128 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int FUNC6 (TYPE_4__*,int) ; 
 int FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iir_ch_dblp ; 
 int /*<<< orphan*/  iir_ch_fltp ; 
 int /*<<< orphan*/  iir_ch_s16p ; 
 int /*<<< orphan*/  iir_ch_s32p ; 
 int /*<<< orphan*/  iir_ch_serial_dblp ; 
 int /*<<< orphan*/  iir_ch_serial_fltp ; 
 int /*<<< orphan*/  iir_ch_serial_s16p ; 
 int /*<<< orphan*/  iir_ch_serial_s32p ; 
 int FUNC10 (TYPE_4__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioIIRContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int ch, ret, i;

    s->channels = inlink->channels;
    s->iir = FUNC1(s->channels, sizeof(*s->iir));
    if (!s->iir)
        return FUNC0(ENOMEM);

    ret = FUNC11(ctx, s->g_str, inlink->channels);
    if (ret < 0)
        return ret;

    ret = FUNC10(ctx, inlink->channels, s->a_str, 0);
    if (ret < 0)
        return ret;

    ret = FUNC10(ctx, inlink->channels, s->b_str, 1);
    if (ret < 0)
        return ret;

    if (s->format == 2) {
        FUNC5(ctx, inlink->channels);
    } else if (s->format == 3) {
        FUNC4(ctx, inlink->channels);
    }

    FUNC2(&s->video);
    if (s->response) {
        s->video = FUNC9(ctx->outputs[1], s->w, s->h);
        if (!s->video)
            return FUNC0(ENOMEM);

        FUNC8(ctx, s->video);
    }

    if (s->format == 0)
        FUNC3(ctx, AV_LOG_WARNING, "tf coefficients format is not recommended for too high number of zeros/poles.\n");

    if (s->format > 0 && s->process == 0) {
        FUNC3(ctx, AV_LOG_WARNING, "Direct processsing is not recommended for zp coefficients format.\n");

        ret = FUNC6(ctx, inlink->channels);
        if (ret < 0)
            return ret;
    } else if (s->format == 0 && s->process == 1) {
        FUNC3(ctx, AV_LOG_ERROR, "Serial cascading is not implemented for transfer function.\n");
        return AVERROR_PATCHWELCOME;
    } else if (s->format > 0 && s->process == 1) {
        if (inlink->format == AV_SAMPLE_FMT_S16P)
            FUNC3(ctx, AV_LOG_WARNING, "Serial cascading is not recommended for i16 precision.\n");

        ret = FUNC7(ctx, inlink->channels);
        if (ret < 0)
            return ret;
    }

    for (ch = 0; s->format == 0 && ch < inlink->channels; ch++) {
        IIRChannel *iir = &s->iir[ch];

        for (i = 1; i < iir->nb_ab[0]; i++) {
            iir->ab[0][i] /= iir->ab[0][0];
        }

        for (i = 0; i < iir->nb_ab[1]; i++) {
            iir->ab[1][i] *= iir->g / iir->ab[0][0];
        }
    }

    switch (inlink->format) {
    case AV_SAMPLE_FMT_DBLP: s->iir_channel = s->process == 1 ? iir_ch_serial_dblp : iir_ch_dblp; break;
    case AV_SAMPLE_FMT_FLTP: s->iir_channel = s->process == 1 ? iir_ch_serial_fltp : iir_ch_fltp; break;
    case AV_SAMPLE_FMT_S32P: s->iir_channel = s->process == 1 ? iir_ch_serial_s32p : iir_ch_s32p; break;
    case AV_SAMPLE_FMT_S16P: s->iir_channel = s->process == 1 ? iir_ch_serial_s16p : iir_ch_s16p; break;
    }

    return 0;
}