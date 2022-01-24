#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/ * angle_expr; } ;
typedef  TYPE_1__ RotContext ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVExpr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  var_names ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    RotContext *rot = ctx->priv;
    int ret;

    if (!FUNC4(cmd, "angle") || !FUNC4(cmd, "a")) {
        AVExpr *old = rot->angle_expr;
        ret = FUNC2(&rot->angle_expr, args, var_names,
                            NULL, NULL, NULL, NULL, 0, ctx);
        if (ret < 0) {
            FUNC3(ctx, AV_LOG_ERROR,
                   "Error when parsing the expression '%s' for angle command\n", args);
            rot->angle_expr = old;
            return ret;
        }
        FUNC1(old);
    } else
        ret = FUNC0(ENOSYS);

    return ret;
}