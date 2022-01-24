#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * priv; TYPE_2__** outputs; } ;
struct TYPE_16__ {scalar_t__ format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* dst; } ;
struct TYPE_15__ {scalar_t__ format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  int /*<<< orphan*/  HWUploadContext ;
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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *link, AVFrame *input)
{
    AVFilterContext *avctx = link->dst;
    AVFilterLink  *outlink = avctx->outputs[0];
    HWUploadContext   *ctx = avctx->priv;
    AVFrame *output = NULL;
    int err;

    if (input->format == outlink->format)
        return FUNC5(outlink, input);

    output = FUNC6(outlink, outlink->w, outlink->h);
    if (!output) {
        FUNC4(ctx, AV_LOG_ERROR, "Failed to allocate frame to upload to.\n");
        err = FUNC0(ENOMEM);
        goto fail;
    }

    output->width  = input->width;
    output->height = input->height;

    err = FUNC3(output, input, 0);
    if (err < 0) {
        FUNC4(ctx, AV_LOG_ERROR, "Failed to upload frame: %d.\n", err);
        goto fail;
    }

    err = FUNC1(output, input);
    if (err < 0)
        goto fail;

    FUNC2(&input);

    return FUNC5(outlink, output);

fail:
    FUNC2(&input);
    FUNC2(&output);
    return err;
}