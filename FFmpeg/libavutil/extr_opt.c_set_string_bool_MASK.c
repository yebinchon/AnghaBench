#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int min; int max; } ;
typedef  TYPE_1__ AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC6(void *obj, const AVOption *o, const char *val, int *dst)
{
    int n;

    if (!val)
        return 0;

    if (!FUNC3(val, "auto")) {
        n = -1;
    } else if (FUNC2(val, "true,y,yes,enable,enabled,on")) {
        n = 1;
    } else if (FUNC2(val, "false,n,no,disable,disabled,off")) {
        n = 0;
    } else {
        char *end = NULL;
        n = FUNC5(val, &end, 10);
        if (val + FUNC4(val) != end)
            goto fail;
    }

    if (n < o->min || n > o->max)
        goto fail;

    *dst = n;
    return 0;

fail:
    FUNC1(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as boolean\n", val);
    return FUNC0(EINVAL);
}