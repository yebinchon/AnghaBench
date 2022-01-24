#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct SOFAlizerContext {int sample_rate; } ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__** inputs; struct SOFAlizerContext* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  in_channel_layouts; } ;
struct TYPE_7__ {int /*<<< orphan*/  out_channel_layouts; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
#define  AV_SAMPLE_FMT_FLT 130 
#define  AV_SAMPLE_FMT_FLTP 129 
#define  AV_SAMPLE_FMT_NONE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int const*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    struct SOFAlizerContext *s = ctx->priv;
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts = NULL;
    int ret, sample_rates[] = { 48000, -1 };
    static const enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_FLT, AV_SAMPLE_FMT_FLTP,
        AV_SAMPLE_FMT_NONE
    };

    formats = FUNC4(sample_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    ret = FUNC5(ctx, formats);
    if (ret)
        return ret;

    layouts = FUNC2();
    if (!layouts)
        return FUNC0(ENOMEM);

    ret = FUNC3(layouts, &ctx->inputs[0]->out_channel_layouts);
    if (ret)
        return ret;

    layouts = NULL;
    ret = FUNC1(&layouts, AV_CH_LAYOUT_STEREO);
    if (ret)
        return ret;

    ret = FUNC3(layouts, &ctx->outputs[0]->in_channel_layouts);
    if (ret)
        return ret;

    sample_rates[0] = s->sample_rate;
    formats = FUNC4(sample_rates);
    if (!formats)
        return FUNC0(ENOMEM);
    return FUNC6(ctx, formats);
}