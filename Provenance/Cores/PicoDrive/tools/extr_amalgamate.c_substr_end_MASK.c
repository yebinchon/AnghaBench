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
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static const char *FUNC3(const char *string, const char *part)
{
	const char *p = string;
	int len = FUNC1(part);

	while (*p && FUNC0(*p)) p++;
	return (FUNC2(p, part, len) == 0) ? (p + len) : NULL;
}