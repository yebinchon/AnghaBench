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
 void* FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (void*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

char *FUNC3(const char *str)
{
	size_t len = FUNC2(str)+ 1;
	void *new = FUNC0(len);

	if (new == NULL)
		return NULL;

	return (char *)FUNC1(new, str, len);
}