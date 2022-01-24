#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  priv; TYPE_1__* filter; } ;
struct TYPE_4__ {int /*<<< orphan*/  priv_class; } ;
typedef  int /*<<< orphan*/  AVOption ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_OPT_FLAG_FILTERING_PARAM ; 
 int AV_OPT_FLAG_RUNTIME_PARAM ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(AVFilterContext *ctx, const char *cmd,
                              const char *arg, char *res, int res_len, int flags)
{
    const AVOption *o;

    if (!ctx->filter->priv_class)
        return 0;
    o = FUNC1(ctx->priv, cmd, NULL, AV_OPT_FLAG_RUNTIME_PARAM | AV_OPT_FLAG_FILTERING_PARAM, AV_OPT_SEARCH_CHILDREN, NULL);
    if (!o)
        return FUNC0(ENOSYS);
    return FUNC2(ctx->priv, cmd, arg, 0);
}