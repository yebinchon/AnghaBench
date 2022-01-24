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
struct TYPE_6__ {scalar_t__ eval_mode; int /*<<< orphan*/  volume_pexpr; } ;
typedef  TYPE_1__ VolumeContext ;
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ EVAL_MODE_ONCE ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    VolumeContext *vol = ctx->priv;
    int ret = FUNC0(ENOSYS);

    if (!FUNC3(cmd, "volume")) {
        if ((ret = FUNC1(&vol->volume_pexpr, args, ctx)) < 0)
            return ret;
        if (vol->eval_mode == EVAL_MODE_ONCE)
            FUNC2(ctx);
    }

    return ret;
}