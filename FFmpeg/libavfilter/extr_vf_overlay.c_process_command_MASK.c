#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {scalar_t__ eval_mode; int /*<<< orphan*/  y; int /*<<< orphan*/ * var_values; int /*<<< orphan*/  x; int /*<<< orphan*/  y_pexpr; int /*<<< orphan*/  x_pexpr; } ;
typedef  TYPE_1__ OverlayContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ EVAL_MODE_INIT ; 
 size_t VAR_X ; 
 size_t VAR_Y ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    OverlayContext *s = ctx->priv;
    int ret;

    if      (!FUNC4(cmd, "x"))
        ret = FUNC3(&s->x_pexpr, args, cmd, ctx);
    else if (!FUNC4(cmd, "y"))
        ret = FUNC3(&s->y_pexpr, args, cmd, ctx);
    else
        ret = FUNC0(ENOSYS);

    if (ret < 0)
        return ret;

    if (s->eval_mode == EVAL_MODE_INIT) {
        FUNC2(ctx);
        FUNC1(ctx, AV_LOG_VERBOSE, "x:%f xi:%d y:%f yi:%d\n",
               s->var_values[VAR_X], s->x,
               s->var_values[VAR_Y], s->y);
    }
    return ret;
}