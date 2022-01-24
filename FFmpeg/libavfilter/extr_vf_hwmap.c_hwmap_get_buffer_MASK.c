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
struct TYPE_10__ {TYPE_1__* priv; TYPE_2__** outputs; } ;
struct TYPE_9__ {int /*<<< orphan*/  hw_frames_ctx; TYPE_3__* dst; } ;
struct TYPE_8__ {int /*<<< orphan*/  mode; scalar_t__ reverse; } ;
typedef  TYPE_1__ HWMapContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int,int) ; 

__attribute__((used)) static AVFrame *FUNC6(AVFilterLink *inlink, int w, int h)
{
    AVFilterContext *avctx = inlink->dst;
    AVFilterLink  *outlink = avctx->outputs[0];
    HWMapContext      *ctx = avctx->priv;

    if (ctx->reverse && !inlink->hw_frames_ctx) {
        AVFrame *src, *dst;
        int err;

        src = FUNC5(outlink, w, h);
        if (!src) {
            FUNC3(avctx, AV_LOG_ERROR, "Failed to allocate source "
                   "frame for software mapping.\n");
            return NULL;
        }

        dst = FUNC0();
        if (!dst) {
            FUNC1(&src);
            return NULL;
        }

        err = FUNC2(dst, src, ctx->mode);
        if (err) {
            FUNC3(avctx, AV_LOG_ERROR, "Failed to map frame to "
                   "software: %d.\n", err);
            FUNC1(&src);
            FUNC1(&dst);
            return NULL;
        }

        FUNC1(&src);
        return dst;
    } else {
        return FUNC4(inlink, w, h);
    }
}