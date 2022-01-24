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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *s1, const char *s2)
{
	int pos;
	pos = FUNC1(s1) - FUNC1(s2);
	if (pos < 0)
		return 0;
	return FUNC0(s1 + pos, s2) == 0;
}