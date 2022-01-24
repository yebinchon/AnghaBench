#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_2__** outputs; } ;
struct TYPE_17__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* dst; } ;
struct TYPE_16__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext   *ctx = link->dst;
    AVFilterLink  *outlink = ctx->outputs[0];

    AVFrame *out = NULL;
    int ret;

    out = FUNC6(outlink, outlink->w, outlink->h);
    if (!out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    out->width  = in->width;
    out->height = in->height;

    ret = FUNC3(out, in, 0);
    if (ret < 0) {
        FUNC4(ctx, AV_LOG_ERROR, "Error transferring data to the GPU\n");
        goto fail;
    }

    ret = FUNC1(out, in);
    if (ret < 0)
        goto fail;

    FUNC2(&in);

    return FUNC5(ctx->outputs[0], out);
fail:
    FUNC2(&in);
    FUNC2(&out);
    return ret;
}