#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* iir; } ;
struct TYPE_6__ {int /*<<< orphan*/  g; } ;
typedef  TYPE_2__ AudioIIRContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx, char *item_str, int nb_items)
{
    AudioIIRContext *s = ctx->priv;
    char *p, *arg, *old_str, *prev_arg = NULL, *saveptr = NULL;
    int i;

    p = old_str = FUNC3(item_str);
    if (!p)
        return FUNC0(ENOMEM);
    for (i = 0; i < nb_items; i++) {
        if (!(arg = FUNC4(p, "|", &saveptr)))
            arg = prev_arg;

        if (!arg) {
            FUNC1(&old_str);
            return FUNC0(EINVAL);
        }

        p = NULL;
        if (FUNC5(arg, "%lf", &s->iir[i].g) != 1) {
            FUNC2(ctx, AV_LOG_ERROR, "Invalid gains supplied: %s\n", arg);
            FUNC1(&old_str);
            return FUNC0(EINVAL);
        }

        prev_arg = arg;
    }

    FUNC1(&old_str);

    return 0;
}