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
struct HeadphoneContext {scalar_t__ hrir_fmt; int nb_inputs; } ;
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__** inputs; struct HeadphoneContext* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  in_channel_layouts; } ;
struct TYPE_7__ {int /*<<< orphan*/  out_channel_layouts; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_FLT ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ HRIR_MULTI ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    struct HeadphoneContext *s = ctx->priv;
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts = NULL;
    AVFilterChannelLayouts *stereo_layout = NULL;
    AVFilterChannelLayouts *hrir_layouts = NULL;
    int ret, i;

    ret = FUNC2(&formats, AV_SAMPLE_FMT_FLT);
    if (ret)
        return ret;
    ret = FUNC7(ctx, formats);
    if (ret)
        return ret;

    layouts = FUNC4();
    if (!layouts)
        return FUNC0(ENOMEM);

    ret = FUNC6(layouts, &ctx->inputs[0]->out_channel_layouts);
    if (ret)
        return ret;

    ret = FUNC1(&stereo_layout, AV_CH_LAYOUT_STEREO);
    if (ret)
        return ret;

    if (s->hrir_fmt == HRIR_MULTI) {
        hrir_layouts = FUNC3();
        if (!hrir_layouts)
            return FUNC0(ENOMEM);
        ret = FUNC6(hrir_layouts, &ctx->inputs[1]->out_channel_layouts);
        if (ret)
            return ret;
    } else {
        for (i = 1; i < s->nb_inputs; i++) {
            ret = FUNC6(stereo_layout, &ctx->inputs[i]->out_channel_layouts);
            if (ret)
                return ret;
        }
    }

    ret = FUNC6(stereo_layout, &ctx->outputs[0]->in_channel_layouts);
    if (ret)
        return ret;

    formats = FUNC5();
    if (!formats)
        return FUNC0(ENOMEM);
    return FUNC8(ctx, formats);
}