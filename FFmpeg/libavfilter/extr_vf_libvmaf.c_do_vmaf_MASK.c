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
struct TYPE_9__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_7__ {int frame_set; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  gmain; int /*<<< orphan*/  gref; scalar_t__ error; } ;
typedef  TYPE_1__ LIBVMAFContext ;
typedef  TYPE_2__ FFFrameSync ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    LIBVMAFContext *s = ctx->priv;
    AVFrame *master, *ref;
    int ret;

    ret = FUNC4(fs, &master, &ref);
    if (ret < 0)
        return ret;
    if (!ref)
        return FUNC3(ctx->outputs[0], master);

    FUNC7(&s->lock);

    while (s->frame_set && !s->error) {
        FUNC6(&s->cond, &s->lock);
    }

    if (s->error) {
        FUNC2(ctx, AV_LOG_ERROR,
               "libvmaf encountered an error, check log for details\n");
        FUNC8(&s->lock);
        return FUNC0(EINVAL);
    }

    FUNC1(s->gref, ref);
    FUNC1(s->gmain, master);

    s->frame_set = 1;

    FUNC5(&s->cond);
    FUNC8(&s->lock);

    return FUNC3(ctx->outputs[0], master);
}