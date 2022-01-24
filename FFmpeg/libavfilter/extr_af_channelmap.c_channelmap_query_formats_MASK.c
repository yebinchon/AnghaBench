#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {struct TYPE_17__* channel_layouts; } ;
struct TYPE_16__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_15__ {int /*<<< orphan*/  output_layout; } ;
struct TYPE_14__ {int /*<<< orphan*/  in_channel_layouts; } ;
struct TYPE_13__ {int /*<<< orphan*/  out_channel_layouts; } ;
typedef  TYPE_3__ ChannelMapContext ;
typedef  TYPE_4__ AVFilterContext ;
typedef  TYPE_5__ AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__**) ; 
 int FUNC2 (TYPE_5__**,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    ChannelMapContext *s = ctx->priv;
    AVFilterChannelLayouts *layouts;
    AVFilterChannelLayouts *channel_layouts = NULL;
    int ret;

    layouts = FUNC3();
    if (!layouts) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    if ((ret = FUNC2     (&channel_layouts, s->output_layout                    )) < 0 ||
        (ret = FUNC7     (ctx             , FUNC6()             )) < 0 ||
        (ret = FUNC8 (ctx             , FUNC4()                )) < 0 ||
        (ret = FUNC5    (layouts         , &ctx->inputs[0]->out_channel_layouts)) < 0 ||
        (ret = FUNC5    (channel_layouts , &ctx->outputs[0]->in_channel_layouts)) < 0)
            goto fail;

    return 0;
fail:
    if (layouts)
        FUNC1(&layouts->channel_layouts);
    FUNC1(&layouts);
    return ret;
}