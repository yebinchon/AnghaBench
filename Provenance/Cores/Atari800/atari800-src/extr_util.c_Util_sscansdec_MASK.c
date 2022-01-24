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
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (char const*) ; 

int FUNC1(char const *s, int *dest)
{
	int minus = FALSE;
	switch(*s) {
	case '-':
		minus = TRUE;
		/* Fallthrough! */
	case '+':
		++s;
	}
	*dest = FUNC0(s);
	if (*dest == -1)
		return FALSE;
	if (minus)
		*dest = -*dest;
	return TRUE;
}