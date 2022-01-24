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
 int /*<<< orphan*/  const* FUNC0 (void*,char const*,char const*,int,int,int /*<<< orphan*/ *) ; 

const AVOption *FUNC1(void *obj, const char *name, const char *unit,
                            int opt_flags, int search_flags)
{
    return FUNC0(obj, name, unit, opt_flags, search_flags, NULL);
}