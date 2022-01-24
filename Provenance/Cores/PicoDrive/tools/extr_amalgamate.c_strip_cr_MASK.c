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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(char *str)
{
	int len = FUNC4(str);
	char *p = str;

	while ((p = FUNC3(p, '\r')))
	{
		FUNC1(p, p + 1, len - (p - str) + 1);
	}
	if (FUNC4(str) > 0)
	{
		p = str + FUNC4(str) - 1;
		while (p >= str && FUNC0(*p)) { *p = 0; p--; } // strip spaces on line ends
	}
	FUNC2(str, "\n"); // re-add newline
}