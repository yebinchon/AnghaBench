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
 int FUNC0 (char) ; 

__attribute__((used)) static void FUNC1(char *a)
{
	char *ipos, *opos;
	int remove_whitespace = 1;

	ipos = opos = a;

	while (*ipos) {
		if (remove_whitespace && FUNC0(*ipos))
			ipos++;
		else {
			remove_whitespace = FUNC0(*ipos);
			*opos++ = *ipos++;
		}
	}

	*opos-- = '\0';
	if (opos > a && FUNC0(*opos))
		*opos = '\0';
}