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
typedef  int /*<<< orphan*/  AVOption ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * FUNC1 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void**) ; 
 int FUNC2 (void*,int /*<<< orphan*/  const*) ; 

int FUNC3(void *obj, const char *name, int search_flags)
{
    const AVOption *o;
    void *target;
    if (!obj)
        return FUNC0(EINVAL);
    o = FUNC1(obj, name, NULL, 0, search_flags, &target);
    if (!o)
        return AVERROR_OPTION_NOT_FOUND;
    return FUNC2(target, o);
}