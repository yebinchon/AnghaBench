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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(
	char	*str,
	int	maxlen)
{
	char *lp;
	int c;
	char *strmax = str + maxlen - 1; /* allow space for trailing 0 */

	lp = str;
	for (;;) {
		c = FUNC0();
		switch (c) {
		case '\n':
		case '\r':
			FUNC1("\n");
			*lp++ = 0;
			return;
			
		case '\b':
		case '#':
		case '\177':
			if (lp > str) {
				FUNC1("\b \b");
				lp--;
			}
			continue;

		case '@':
		case 'u'&037:
			lp = str;
			FUNC1("\n\r");
			continue;

		default:
			if (c >= ' ' && c < '\177') {
				if (lp < strmax) {
					*lp++ = c;
					FUNC1("%c", c);
				}
				else {
					FUNC1("%c", '\007'); /* beep */
				}
			}
		}
	}
}