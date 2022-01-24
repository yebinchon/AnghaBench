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
struct TYPE_14__ {int src2_factor; scalar_t__ src1_factor; int /*<<< orphan*/  copy_src2; int /*<<< orphan*/  copy_src1; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_17__ {TYPE_1__* internal; TYPE_4__** outputs; TYPE_3__* priv; } ;
struct TYPE_16__ {int h; int /*<<< orphan*/  w; } ;
struct TYPE_15__ {int flags; double score; double scene_score; int /*<<< orphan*/  f0; int /*<<< orphan*/  work; scalar_t__ blend_factor_max; int /*<<< orphan*/  f1; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ FrameRateContext ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FRAMERATE_FLAG_SCD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  filter_slice ; 
 double FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx, int interpolate)
{
    FrameRateContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    double interpolate_scene_score = 0;

    if ((s->flags & FRAMERATE_FLAG_SCD)) {
        if (s->score >= 0.0)
            interpolate_scene_score = s->score;
        else
            interpolate_scene_score = s->score = FUNC7(ctx, s->f0, s->f1);
        FUNC4(ctx, "blend_frames() interpolate scene score:%f\n", interpolate_scene_score);
    }
    // decide if the shot-change detection allows us to blend two frames
    if (interpolate_scene_score < s->scene_score) {
        ThreadData td;
        td.copy_src1 = s->f0;
        td.copy_src2 = s->f1;
        td.src2_factor = interpolate;
        td.src1_factor = s->blend_factor_max - td.src2_factor;

        // get work-space for output frame
        s->work = FUNC6(outlink, outlink->w, outlink->h);
        if (!s->work)
            return FUNC0(ENOMEM);

        FUNC3(s->work, s->f0);

        FUNC4(ctx, "blend_frames() INTERPOLATE to create work frame\n");
        ctx->internal->execute(ctx, filter_slice, &td, NULL, FUNC2(FUNC1(1, outlink->h >> 2), FUNC5(ctx)));
        return 1;
    }
    return 0;
}