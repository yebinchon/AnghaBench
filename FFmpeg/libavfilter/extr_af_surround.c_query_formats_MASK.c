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
struct TYPE_11__ {TYPE_2__** inputs; TYPE_1__** outputs; TYPE_3__* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/  in_channel_layout; int /*<<< orphan*/  out_channel_layout; } ;
struct TYPE_9__ {int /*<<< orphan*/  out_channel_layouts; } ;
struct TYPE_8__ {int /*<<< orphan*/  in_channel_layouts; } ;
typedef  TYPE_3__ AudioSurroundContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_FLTP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    AudioSurroundContext *s = ctx->priv;
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts = NULL;
    int ret;

    ret = FUNC2(&formats, AV_SAMPLE_FMT_FLTP);
    if (ret)
        return ret;
    ret = FUNC5(ctx, formats);
    if (ret)
        return ret;

    layouts = NULL;
    ret = FUNC1(&layouts, s->out_channel_layout);
    if (ret)
        return ret;

    ret = FUNC4(layouts, &ctx->outputs[0]->in_channel_layouts);
    if (ret)
        return ret;

    layouts = NULL;
    ret = FUNC1(&layouts, s->in_channel_layout);
    if (ret)
        return ret;

    ret = FUNC4(layouts, &ctx->inputs[0]->out_channel_layouts);
    if (ret)
        return ret;

    formats = FUNC3();
    if (!formats)
        return FUNC0(ENOMEM);
    return FUNC6(ctx, formats);
}