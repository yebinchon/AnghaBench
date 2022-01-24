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
typedef  TYPE_1__ LADSPAContext ;
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
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int const*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx)
{
    LADSPAContext *s = ctx->priv;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    static const enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_FLTP, AV_SAMPLE_FMT_NONE };
    int ret;

    formats = FUNC6(sample_fmts);
    if (!formats)
        return FUNC0(ENOMEM);
    ret = FUNC8(ctx, formats);
    if (ret < 0)
        return ret;

    if (s->nb_inputs) {
        formats = FUNC4();
        if (!formats)
            return FUNC0(ENOMEM);

        ret = FUNC9(ctx, formats);
        if (ret < 0)
            return ret;
    } else {
        int sample_rates[] = { s->sample_rate, -1 };

        ret = FUNC9(ctx, FUNC6(sample_rates));
        if (ret < 0)
            return ret;
    }

    if (s->nb_inputs == 1 && s->nb_outputs == 1) {
        // We will instantiate multiple LADSPA_Handle, one over each channel
        layouts = FUNC3();
        if (!layouts)
            return FUNC0(ENOMEM);

        ret = FUNC7(ctx, layouts);
        if (ret < 0)
            return ret;
    } else if (s->nb_inputs == 2 && s->nb_outputs == 2) {
        layouts = NULL;
        ret = FUNC2(&layouts, AV_CH_LAYOUT_STEREO);
        if (ret < 0)
            return ret;
        ret = FUNC7(ctx, layouts);
        if (ret < 0)
            return ret;
    } else {
        AVFilterLink *outlink = ctx->outputs[0];

        if (s->nb_inputs >= 1) {
            AVFilterLink *inlink = ctx->inputs[0];
            uint64_t inlayout = FUNC1(s->nb_inputs);

            layouts = NULL;
            ret = FUNC2(&layouts, inlayout);
            if (ret < 0)
                return ret;
            ret = FUNC5(layouts, &inlink->out_channel_layouts);
            if (ret < 0)
                return ret;

            if (!s->nb_outputs) {
                ret = FUNC5(layouts, &outlink->in_channel_layouts);
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
            ret = FUNC5(layouts, &outlink->in_channel_layouts);
            if (ret < 0)
                return ret;
        }
    }

    return 0;
}