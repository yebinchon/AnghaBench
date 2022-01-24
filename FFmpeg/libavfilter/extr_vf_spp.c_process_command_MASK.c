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
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  log2_count; } ;
typedef  TYPE_1__ SPPContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    SPPContext *s = ctx->priv;

    if (!FUNC2(cmd, "level")) {
        if (!FUNC2(args, "max"))
            s->log2_count = MAX_LEVEL;
        else
            s->log2_count = FUNC1(FUNC3(args, NULL, 10), 0, MAX_LEVEL);
        return 0;
    }
    return FUNC0(ENOSYS);
}