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
 int FUNC0 (char*,char*) ; 

int FUNC1(void *p1, void *p2)
{
	char *s1, *s2;
	if (p1 == NULL || p2 == NULL)
	{
		return 0;
	}
	s1 = *(char **)p1;
	s2 = *(char **)p2;
	if (s1 == NULL || s2 == NULL)
	{
		return 0;
	}

	if (s1[0] == '[' && s2[0] != '[')
	{
		return -1;
	}
	else if (s2[0] == '[' && s1[0] != '[')
	{
		return 1;
	}

	return FUNC0(s1, s2);
}