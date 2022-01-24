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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 

void FUNC2(char *dst, UINT size, char *src, bool ipv6)
{
	// Validate arguments
	if (dst == NULL || src == NULL)
	{
		return;
	}

	if (ipv6 == false)
	{
		FUNC1(dst, size, src);
	}
	else
	{
		FUNC0(dst, size, "%s@ipv6", src);
	}
}