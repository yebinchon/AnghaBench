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
typedef  int /*<<< orphan*/  AVFilterFormats ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int) ; 

AVFilterFormats *FUNC3(void)
{
    AVFilterFormats *ret = NULL;
    int fmt;

    for (fmt = 0; FUNC0(fmt)>0; fmt++)
        if (FUNC1(fmt))
            if (FUNC2(&ret, fmt) < 0)
                return NULL;

    return ret;
}