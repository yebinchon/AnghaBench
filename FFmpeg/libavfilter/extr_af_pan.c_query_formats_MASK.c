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
struct TYPE_10__ {TYPE_2__** outputs; TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  out_channel_layouts; } ;
struct TYPE_8__ {int /*<<< orphan*/  nb_output_channels; scalar_t__ out_channel_layout; int /*<<< orphan*/  pure_gains; } ;
typedef  TYPE_1__ PanContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    PanContext *pan = ctx->priv;
    AVFilterLink *inlink  = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts;
    int ret;

    pan->pure_gains = FUNC1(pan);
    /* libswr supports any sample and packing formats */
    if ((ret = FUNC7(ctx, FUNC4(AVMEDIA_TYPE_AUDIO))) < 0)
        return ret;

    formats = FUNC5();
    if ((ret = FUNC8(ctx, formats)) < 0)
        return ret;

    // inlink supports any channel layout
    layouts = FUNC3();
    if ((ret = FUNC6(layouts, &inlink->out_channel_layouts)) < 0)
        return ret;

    // outlink supports only requested output channel layout
    layouts = NULL;
    if ((ret = FUNC2(&layouts,
                          pan->out_channel_layout ? pan->out_channel_layout :
                          FUNC0(pan->nb_output_channels))) < 0)
        return ret;
    return FUNC6(layouts, &outlink->in_channel_layouts);
}