#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int nb_outputs; TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/ * map; int /*<<< orphan*/  channel_layout; } ;
struct TYPE_9__ {int /*<<< orphan*/  in_channel_layouts; } ;
struct TYPE_8__ {int /*<<< orphan*/  out_channel_layouts; } ;
typedef  TYPE_3__ ChannelSplitContext ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    ChannelSplitContext *s = ctx->priv;
    AVFilterChannelLayouts *in_layouts = NULL;
    int i, ret;

    if ((ret = FUNC5(ctx, FUNC4())) < 0 ||
        (ret = FUNC6(ctx, FUNC2())) < 0)
        return ret;

    if ((ret = FUNC1(&in_layouts, s->channel_layout)) < 0 ||
        (ret = FUNC3(in_layouts, &ctx->inputs[0]->out_channel_layouts)) < 0)
        return ret;

    for (i = 0; i < ctx->nb_outputs; i++) {
        AVFilterChannelLayouts *out_layouts = NULL;
        uint64_t channel = FUNC0(s->channel_layout, s->map[i]);

        if ((ret = FUNC1(&out_layouts, channel)) < 0 ||
            (ret = FUNC3(out_layouts, &ctx->outputs[i]->in_channel_layouts)) < 0)
            return ret;
    }

    return 0;
}