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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_10__ {TYPE_1__* priv; TYPE_2__** outputs; TYPE_2__** inputs; } ;
struct TYPE_9__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  out_channel_layouts; } ;
struct TYPE_8__ {int /*<<< orphan*/  nb_channels; scalar_t__ out_channel_layout; scalar_t__ same_chlayout; } ;
typedef  TYPE_1__ EvalContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
#define  AV_SAMPLE_FMT_DBLP 129 
#define  AV_SAMPLE_FMT_NONE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int const*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts;
    AVFilterLink *inlink  = ctx->inputs[0];
    AVFilterLink *outlink  = ctx->outputs[0];
    EvalContext *eval = ctx->priv;
    static const enum AVSampleFormat sample_fmts[] = {
        AV_SAMPLE_FMT_DBLP, AV_SAMPLE_FMT_NONE
    };
    int ret;

    // inlink supports any channel layout
    layouts = FUNC2();
    if ((ret = FUNC4(layouts, &inlink->out_channel_layouts)) < 0)
        return ret;

    if (eval->same_chlayout) {
        layouts = FUNC2();
        if ((ret = FUNC6(ctx, layouts)) < 0)
            return ret;
    } else {
        // outlink supports only requested output channel layout
        layouts = NULL;
        if ((ret = FUNC1(&layouts,
                              eval->out_channel_layout ? eval->out_channel_layout :
                              FUNC0(eval->nb_channels))) < 0)
            return ret;
        if ((ret = FUNC4(layouts, &outlink->in_channel_layouts)) < 0)
            return ret;
    }

    formats = FUNC5(sample_fmts);
    if ((ret = FUNC7(ctx, formats)) < 0)
        return ret;

    formats = FUNC3();
    return FUNC8(ctx, formats);
}