#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * inputs; } ;
typedef  TYPE_1__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,char const*,char const*,char*,int,int) ; 

__attribute__((used)) static int FUNC2(AVFilterContext *ctx,
                           const char *cmd,
                           const char *arg,
                           char *res,
                           int res_len,
                           int flags)
{
    int ret = FUNC1(ctx, cmd, arg, res, res_len, flags);

    if (ret < 0)
        return ret;

    return FUNC0(ctx->inputs[0]);
}