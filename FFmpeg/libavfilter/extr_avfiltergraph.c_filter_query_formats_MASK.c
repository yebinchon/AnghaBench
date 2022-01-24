#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_15__ {int nb_inputs; int nb_outputs; TYPE_3__** outputs; TYPE_2__** inputs; int /*<<< orphan*/  name; TYPE_1__* filter; } ;
struct TYPE_14__ {int type; int /*<<< orphan*/  in_channel_layouts; } ;
struct TYPE_13__ {int type; int /*<<< orphan*/  out_channel_layouts; } ;
struct TYPE_12__ {int (* query_formats ) (TYPE_4__*) ;} ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_4__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVMEDIA_TYPE_AUDIO ; 
 int AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC11(AVFilterContext *ctx)
{
    int ret, i;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *chlayouts;
    AVFilterFormats *samplerates;
    enum AVMediaType type = ctx->inputs  && ctx->inputs [0] ? ctx->inputs [0]->type :
                            ctx->outputs && ctx->outputs[0] ? ctx->outputs[0]->type :
                            AVMEDIA_TYPE_VIDEO;

    if ((ret = ctx->filter->query_formats(ctx)) < 0) {
        if (ret != FUNC0(EAGAIN))
            FUNC2(ctx, AV_LOG_ERROR, "Query format failed for '%s': %s\n",
                   ctx->name, FUNC1(ret));
        return ret;
    }

    for (i = 0; i < ctx->nb_inputs; i++)
        FUNC9(ctx, ctx->inputs[i]->out_channel_layouts);
    for (i = 0; i < ctx->nb_outputs; i++)
        FUNC9(ctx, ctx->outputs[i]->in_channel_layouts);

    formats = FUNC4(type);
    if ((ret = FUNC7(ctx, formats)) < 0)
        return ret;
    if (type == AVMEDIA_TYPE_AUDIO) {
        samplerates = FUNC5();
        if ((ret = FUNC8(ctx, samplerates)) < 0)
            return ret;
        chlayouts = FUNC3();
        if ((ret = FUNC6(ctx, chlayouts)) < 0)
            return ret;
    }
    return 0;
}