#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_frames_ctx; TYPE_3__* dst; } ;
struct TYPE_7__ {TYPE_6__* input_frames_ref; int /*<<< orphan*/ * input_frames; } ;
typedef  TYPE_1__ DeintCUDAContext ;
typedef  int /*<<< orphan*/  AVHWFramesContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    DeintCUDAContext *s  = ctx->priv;

    if (!inlink->hw_frames_ctx) {
        FUNC2(ctx, AV_LOG_ERROR, "A hardware frames reference is "
               "required to associate the processing device.\n");
        return FUNC0(EINVAL);
    }

    s->input_frames_ref = FUNC1(inlink->hw_frames_ctx);
    if (!s->input_frames_ref) {
        FUNC2(ctx, AV_LOG_ERROR, "A input frames reference create "
               "failed.\n");
        return FUNC0(ENOMEM);
    }
    s->input_frames = (AVHWFramesContext*)s->input_frames_ref->data;

    return 0;
}