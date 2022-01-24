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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,int) ; 

int FUNC2(char *dst, int len)
{
	int ret = FUNC1(dst, len);
	if (ret < 0)
		return ret;

	FUNC0(dst + ret, "skin/", sizeof "skin/");
	return ret + sizeof("skin/") - 1;
}