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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_2__** outputs; TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  out_formats; int /*<<< orphan*/  in_samplerates; int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  in_formats; } ;
struct TYPE_5__ {int sample_rate; int /*<<< orphan*/  channels; } ;
typedef  TYPE_1__ SpectrumSynthContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_GRAY16 135 
#define  AV_PIX_FMT_GRAY8 134 
#define  AV_PIX_FMT_NONE 133 
#define  AV_PIX_FMT_YUV444P 132 
#define  AV_PIX_FMT_YUV444P16 131 
#define  AV_PIX_FMT_YUVJ444P 130 
#define  AV_SAMPLE_FMT_FLTP 129 
#define  AV_SAMPLE_FMT_NONE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int const*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    SpectrumSynthContext *s = ctx->priv;
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layout = NULL;
    AVFilterLink *magnitude = ctx->inputs[0];
    AVFilterLink *phase = ctx->inputs[1];
    AVFilterLink *outlink = ctx->outputs[0];
    static const enum AVSampleFormat sample_fmts[] = { AV_SAMPLE_FMT_FLTP, AV_SAMPLE_FMT_NONE };
    static const enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_GRAY8, AV_PIX_FMT_GRAY16,
                                                   AV_PIX_FMT_YUV444P, AV_PIX_FMT_YUVJ444P,
                                                   AV_PIX_FMT_YUV444P16, AV_PIX_FMT_NONE };
    int ret, sample_rates[] = { 48000, -1 };

    formats = FUNC5(sample_fmts);
    if ((ret = FUNC4         (formats, &outlink->in_formats        )) < 0 ||
        (ret = FUNC2  (&layout, FUNC1(s->channels))) < 0 ||
        (ret = FUNC3 (layout , &outlink->in_channel_layouts)) < 0)
        return ret;

    sample_rates[0] = s->sample_rate;
    formats = FUNC5(sample_rates);
    if (!formats)
        return FUNC0(ENOMEM);
    if ((ret = FUNC4(formats, &outlink->in_samplerates)) < 0)
        return ret;

    formats = FUNC5(pix_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    if ((ret = FUNC4(formats, &magnitude->out_formats)) < 0)
        return ret;

    formats = FUNC5(pix_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    if ((ret = FUNC4(formats, &phase->out_formats)) < 0)
        return ret;

    return 0;
}