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
 int /*<<< orphan*/  FUNC0 (char*) ; 

int FUNC1(char* dst, char* src, int maxlength)
{
	char* p = dst;
	while(*src && *src != ' ')
	{
		*p++ = *src++;
		if(p - dst > maxlength)
			FUNC0("Field too long");
	}
	*p = 0;
	return p - dst;
}