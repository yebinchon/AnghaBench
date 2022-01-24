#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ ** inputs; int /*<<< orphan*/ ** outputs; TYPE_1__* priv; } ;
struct TYPE_5__ {int x; int y; int w; int h; } ;
typedef  TYPE_1__ CropContext ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    CropContext *s = ctx->priv;
    int ret;

    if (   !FUNC4(cmd, "out_w")  || !FUNC4(cmd, "w")
        || !FUNC4(cmd, "out_h")  || !FUNC4(cmd, "h")
        || !FUNC4(cmd, "x")      || !FUNC4(cmd, "y")) {

        int old_x = s->x;
        int old_y = s->y;
        int old_w = s->w;
        int old_h = s->h;

        AVFilterLink *outlink = ctx->outputs[0];
        AVFilterLink *inlink  = ctx->inputs[0];

        FUNC1(s, cmd, args, 0);

        if ((ret = FUNC2(inlink)) < 0) {
            s->x = old_x;
            s->y = old_y;
            s->w = old_w;
            s->h = old_h;
            return ret;
        }

        ret = FUNC3(outlink);

    } else
        ret = FUNC0(ENOSYS);

    return ret;
}