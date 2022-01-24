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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char *s, FILE *stream)
{
	char *p;

	for (p = s + FUNC3(s) - 1; p >= s; p--)
		if (!FUNC1(*p))
			break;
	p++;

	/* use DOS endings for better viewer compatibility */
	FUNC2(p, "\r\n", 3);

	return FUNC0(s, stream);
}