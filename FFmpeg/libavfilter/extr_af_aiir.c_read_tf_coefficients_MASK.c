#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int FUNC5 (char*,char*,double*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx, char *item_str, int nb_items, double *dst)
{
    char *p, *arg, *old_str, *saveptr = NULL;
    int i;

    p = old_str = FUNC3(item_str);
    if (!p)
        return FUNC0(ENOMEM);
    for (i = 0; i < nb_items; i++) {
        if (!(arg = FUNC4(p, " ", &saveptr)))
            break;

        p = NULL;
        if (FUNC5(arg, "%lf", &dst[i]) != 1) {
            FUNC2(ctx, AV_LOG_ERROR, "Invalid coefficients supplied: %s\n", arg);
            FUNC1(&old_str);
            return FUNC0(EINVAL);
        }
    }

    FUNC1(&old_str);

    return 0;
}