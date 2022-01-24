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
 scalar_t__ ERANGE ; 
 int FALSE ; 
 int TRUE ; 
 scalar_t__ errno ; 
 double FUNC0 (char const*,char**) ; 

int FUNC1(char const *s, double *dest)
{
	char *endptr;
	double result;

	result = FUNC0(s, &endptr);
	if (endptr[0] != '\0' || errno == ERANGE)
		return FALSE;
	*dest = result;
	return TRUE;
	
}