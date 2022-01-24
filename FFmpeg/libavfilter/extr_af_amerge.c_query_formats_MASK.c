#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_16__ {int nb_inputs; int* route; TYPE_2__* in; } ;
struct TYPE_15__ {TYPE_4__** outputs; TYPE_3__** inputs; TYPE_6__* priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  in_channel_layouts; } ;
struct TYPE_13__ {int /*<<< orphan*/  out_channel_layouts; TYPE_1__* in_channel_layouts; } ;
struct TYPE_12__ {int nb_ch; } ;
struct TYPE_11__ {int nb_channel_layouts; int* channel_layouts; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_5__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;
typedef  TYPE_6__ AMergeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int) ; 
 int SWR_CH_MAX ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_packed_sample_fmts_array ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFilterContext *ctx)
{
    AMergeContext *s = ctx->priv;
    int64_t inlayout[SWR_CH_MAX], outlayout = 0;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    int i, ret, overlap = 0, nb_ch = 0;

    for (i = 0; i < s->nb_inputs; i++) {
        if (!ctx->inputs[i]->in_channel_layouts ||
            !ctx->inputs[i]->in_channel_layouts->nb_channel_layouts) {
            FUNC5(ctx, AV_LOG_WARNING,
                   "No channel layout for input %d\n", i + 1);
            return FUNC0(EAGAIN);
        }
        inlayout[i] = ctx->inputs[i]->in_channel_layouts->channel_layouts[0];
        if (ctx->inputs[i]->in_channel_layouts->nb_channel_layouts > 1) {
            char buf[256];
            FUNC3(buf, sizeof(buf), 0, inlayout[i]);
            FUNC5(ctx, AV_LOG_INFO, "Using \"%s\" for input %d\n", buf, i + 1);
        }
        s->in[i].nb_ch = FUNC1(inlayout[i]);
        if (s->in[i].nb_ch) {
            overlap++;
        } else {
            s->in[i].nb_ch = FUNC2(inlayout[i]);
            if (outlayout & inlayout[i])
                overlap++;
            outlayout |= inlayout[i];
        }
        nb_ch += s->in[i].nb_ch;
    }
    if (nb_ch > SWR_CH_MAX) {
        FUNC5(ctx, AV_LOG_ERROR, "Too many channels (max %d)\n", SWR_CH_MAX);
        return FUNC0(EINVAL);
    }
    if (overlap) {
        FUNC5(ctx, AV_LOG_WARNING,
               "Input channel layouts overlap: "
               "output layout will be determined by the number of distinct input channels\n");
        for (i = 0; i < nb_ch; i++)
            s->route[i] = i;
        outlayout = FUNC4(nb_ch);
        if (!outlayout && nb_ch)
            outlayout = 0xFFFFFFFFFFFFFFFFULL >> (64 - nb_ch);
    } else {
        int *route[SWR_CH_MAX];
        int c, out_ch_number = 0;

        route[0] = s->route;
        for (i = 1; i < s->nb_inputs; i++)
            route[i] = route[i - 1] + s->in[i - 1].nb_ch;
        for (c = 0; c < 64; c++)
            for (i = 0; i < s->nb_inputs; i++)
                if ((inlayout[i] >> c) & 1)
                    *(route[i]++) = out_ch_number++;
    }
    formats = FUNC9(ff_packed_sample_fmts_array);
    if ((ret = FUNC10(ctx, formats)) < 0)
        return ret;
    for (i = 0; i < s->nb_inputs; i++) {
        layouts = NULL;
        if ((ret = FUNC6(&layouts, inlayout[i])) < 0)
            return ret;
        if ((ret = FUNC8(layouts, &ctx->inputs[i]->out_channel_layouts)) < 0)
            return ret;
    }
    layouts = NULL;
    if ((ret = FUNC6(&layouts, outlayout)) < 0)
        return ret;
    if ((ret = FUNC8(layouts, &ctx->outputs[0]->in_channel_layouts)) < 0)
        return ret;

    return FUNC11(ctx, FUNC7());
}