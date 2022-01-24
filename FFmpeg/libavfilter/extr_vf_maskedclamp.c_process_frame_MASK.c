#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_13__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_5__* d; TYPE_5__* m; TYPE_5__* o; TYPE_5__* b; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_29__ {TYPE_1__* internal; scalar_t__ is_disabled; TYPE_6__** outputs; } ;
struct TYPE_28__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_27__ {int /*<<< orphan*/  pts; } ;
struct TYPE_26__ {TYPE_3__* opaque; TYPE_7__* parent; } ;
struct TYPE_22__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  pts; } ;
struct TYPE_25__ {TYPE_13__ fs; int /*<<< orphan*/ * height; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* execute ) (TYPE_7__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ MaskedClampContext ;
typedef  TYPE_4__ FFFrameSync ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int FUNC7 (TYPE_13__*,int,TYPE_5__**,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maskedclamp_slice ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    MaskedClampContext *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out, *base, *dark, *bright;
    int ret;

    if ((ret = FUNC7(&s->fs, 0, &base,   0)) < 0 ||
        (ret = FUNC7(&s->fs, 1, &dark,   0)) < 0 ||
        (ret = FUNC7(&s->fs, 2, &bright, 0)) < 0)
        return ret;

    if (ctx->is_disabled) {
        out = FUNC2(base);
        if (!out)
            return FUNC0(ENOMEM);
    } else {
        ThreadData td;

        out = FUNC8(outlink, outlink->w, outlink->h);
        if (!out)
            return FUNC0(ENOMEM);
        FUNC3(out, base);

        td.b = base;
        td.o = dark;
        td.m = bright;
        td.d = out;

        ctx->internal->execute(ctx, maskedclamp_slice, &td, NULL, FUNC1(s->height[0],
                                                                        FUNC6(ctx)));
    }
    out->pts = FUNC4(s->fs.pts, s->fs.time_base, outlink->time_base);

    return FUNC5(outlink, out);
}