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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

char *FUNC3(char *str)
{
	UINT len;
	char *dst;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	len = FUNC2(str);
	dst = FUNC0(len + 1);
	FUNC1(dst, len + 1, str);
	return dst;
}