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
 char FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*) ; 

void
FUNC4(char *str)
{
	if (!str) {
		return;
	}

	while (*str) {
		if (*str == '%') {
			char c = 0;
			char *esc = str++; /* remember the start of the escape sequence */

			if (*str) {
				c += FUNC0(*str++);
			}
			if (*str) {
				c = (c << 4) + FUNC0(*str++);
			}

			if (FUNC1(c)) {
				/* overwrite the '%' with the new char, and bump the rest of the
				 * string down a few characters */
				*esc++ = c;
				str = FUNC2(esc, str, FUNC3(str)+1);
			}
		} else {
			str++;
		}
	}
}