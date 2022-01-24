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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

bool FUNC2(const char *nameptr, int len)
{
	if (len == 0) {
		len = FUNC0(nameptr);
	}

	if (   FUNC1(nameptr, "atmp", 4) == 0
		|| (len > 4 && FUNC1(nameptr+len-4, ".bak", 4) == 0)
		|| (len > 4 && FUNC1(nameptr+len-4, ".tmp", 4) == 0)) {
		return true;
	}

	return false;
}