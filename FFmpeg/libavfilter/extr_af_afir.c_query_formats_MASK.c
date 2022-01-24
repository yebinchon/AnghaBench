#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_12__ {TYPE_1__** inputs; TYPE_3__** outputs; TYPE_2__* priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  in_formats; } ;
struct TYPE_10__ {scalar_t__ ir_format; scalar_t__ response; } ;
struct TYPE_9__ {int /*<<< orphan*/  out_channel_layouts; } ;
typedef  TYPE_2__ AudioFIRContext ;
typedef  TYPE_3__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
#define  AV_PIX_FMT_NONE 131 
#define  AV_PIX_FMT_RGB0 130 
#define  AV_SAMPLE_FMT_FLTP 129 
#define  AV_SAMPLE_FMT_NONE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int const*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx)
{
    AudioFIRContext *s = ctx->priv;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    static const enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_FLTP,
        AV_SAMPLE_FMT_NONE
    };
    static const enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_RGB0,
        AV_PIX_FMT_NONE
    };
    int ret;

    if (s->response) {
        AVFilterLink *videolink = ctx->outputs[1];
        formats = FUNC6(pix_fmts);
        if ((ret = FUNC5(formats, &videolink->in_formats)) < 0)
            return ret;
    }

    layouts = FUNC2();
    if (!layouts)
        return FUNC0(ENOMEM);

    if (s->ir_format) {
        ret = FUNC7(ctx, layouts);
        if (ret < 0)
            return ret;
    } else {
        AVFilterChannelLayouts *mono = NULL;

        ret = FUNC1(&mono, AV_CH_LAYOUT_MONO);
        if (ret)
            return ret;

        if ((ret = FUNC4(layouts, &ctx->inputs[0]->out_channel_layouts)) < 0)
            return ret;
        if ((ret = FUNC4(layouts, &ctx->outputs[0]->in_channel_layouts)) < 0)
            return ret;
        if ((ret = FUNC4(mono, &ctx->inputs[1]->out_channel_layouts)) < 0)
            return ret;
    }

    formats = FUNC6(sample_fmts);
    if ((ret = FUNC8(ctx, formats)) < 0)
        return ret;

    formats = FUNC3();
    return FUNC9(ctx, formats);
}