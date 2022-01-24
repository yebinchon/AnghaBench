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

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 char const FUNC1 (char const) ; 

int
FUNC2(const char *cp, const char *dp)
{
	char c, d;

	for (; ; cp++, dp++) {
		if (*cp != *dp) {
			c = FUNC0(*cp) ? FUNC1(*cp) : *cp;
			d = FUNC0(*dp) ? FUNC1(*dp) : *dp;
			if (c != d)
				return (0);
		}
		if (*cp == 0)
			return (1);
	}
}