#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_10__ {TYPE_2__** inputs; TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  out_channel_layouts; } ;
struct TYPE_8__ {int nb_inputs; int sample_rate; int nb_outputs; } ;
typedef  TYPE_1__ LV2Context ;
typedef  TYPE_2__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
#define  AV_SAMPLE_FMT_FLTP 129 
#define  AV_SAMPLE_FMT_NONE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int const*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    LV2Context *s = ctx->priv;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    AVFilterLink *outlink = ctx->outputs[0];
    static const enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_FLTP, AV_SAMPLE_FMT_NONE };
    int ret;

    formats = FUNC5(sample_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    ret = FUNC7(ctx, formats);
    if (ret < 0)
        return ret;

    if (s->nb_inputs) {
        formats = FUNC3();
        if (!formats)
            return FUNC0(ENOMEM);

        ret = FUNC8(ctx, formats);
        if (ret < 0)
            return ret;
    } else {
        int sample_rates[] = { s->sample_rate, -1 };

        ret = FUNC8(ctx, FUNC5(sample_rates));
        if (ret < 0)
            return ret;
    }

    if (s->nb_inputs == 2 && s->nb_outputs == 2) {
        layouts = NULL;
        ret = FUNC2(&layouts, AV_CH_LAYOUT_STEREO);
        if (ret < 0)
            return ret;
        ret = FUNC6(ctx, layouts);
        if (ret < 0)
            return ret;
    } else {
        if (s->nb_inputs >= 1) {
            AVFilterLink *inlink = ctx->inputs[0];
            uint64_t inlayout = FUNC1(s->nb_inputs);

            layouts = NULL;
            ret = FUNC2(&layouts, inlayout);
            if (ret < 0)
                return ret;
            ret = FUNC4(layouts, &inlink->out_channel_layouts);
            if (ret < 0)
                return ret;

            if (!s->nb_outputs) {
                ret = FUNC4(layouts, &outlink->in_channel_layouts);
                if (ret < 0)
                    return ret;
            }
        }

        if (s->nb_outputs >= 1) {
            uint64_t outlayout = FUNC1(s->nb_outputs);

            layouts = NULL;
            ret = FUNC2(&layouts, outlayout);
            if (ret < 0)
                return ret;
            ret = FUNC4(layouts, &outlink->in_channel_layouts);
            if (ret < 0)
                return ret;
        }
    }

    return 0;
}