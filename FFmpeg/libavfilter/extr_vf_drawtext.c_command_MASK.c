#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * inputs; TYPE_1__* priv; } ;
struct TYPE_12__ {int reinit; int /*<<< orphan*/ * class; } ;
typedef  TYPE_1__ DrawTextContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_2__*,char const*,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drawtext_class ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx, const char *cmd, const char *arg, char *res, int res_len, int flags)
{
    DrawTextContext *old = ctx->priv;
    DrawTextContext *new = NULL;
    int ret;

    if (!FUNC8(cmd, "reinit")) {
        new = FUNC3(sizeof(DrawTextContext));
        if (!new)
            return FUNC0(ENOMEM);

        new->class = &drawtext_class;
        ret = FUNC4(new, old);
        if (ret < 0)
            goto fail;

        ctx->priv = new;
        ret = FUNC5(ctx, arg, "=", ":");
        if (ret < 0) {
            ctx->priv = old;
            goto fail;
        }

        ret = FUNC7(ctx);
        if (ret < 0) {
            FUNC9(ctx);
            ctx->priv = old;
            goto fail;
        }

        new->reinit = 1;

        ctx->priv = old;
        FUNC9(ctx);
        FUNC1(&old);

        ctx->priv = new;
        return FUNC6(ctx->inputs[0]);
    } else
        return FUNC0(ENOSYS);

fail:
    FUNC2(ctx, AV_LOG_ERROR, "Failed to process command. Continuing with existing parameters.\n");
    FUNC1(&new);
    return ret;
}