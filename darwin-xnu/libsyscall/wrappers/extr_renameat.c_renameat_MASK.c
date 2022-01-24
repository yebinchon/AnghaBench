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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,char const*,int,char const*) ; 

int
FUNC2(int oldfd, const char *old, int newfd, const char *new)
{
	int res = FUNC1(oldfd, old, newfd, new);
	if (res == 0) FUNC0();
	return res;
}