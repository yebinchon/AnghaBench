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
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int tempo; int /*<<< orphan*/  pitch; int /*<<< orphan*/  rbs; } ;
typedef  TYPE_1__ RubberBandContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char const*,char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    RubberBandContext *s = ctx->priv;
    int ret;

    ret = FUNC0(ctx, cmd, args, res, res_len, flags);
    if (ret < 0)
        return ret;

    FUNC2(s->rbs, 1. / s->tempo);
    FUNC1(s->rbs, s->pitch);

    return 0;
}