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
 int EOF ; 
 int MAXTOKEN ; 
 int /*<<< orphan*/  fp ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(void) {
	int c;
	char buf[MAXTOKEN], *s = buf;

	while ((c = FUNC0(fp)) != EOF && c != ' ' && c != '\n' && c != '\t')
		if (s - buf < (int)sizeof buf - 2)
			*s++ = c;
	*s = 0;
	return s == buf ? (char *)0 : FUNC1(buf);
}