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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(char *str)
{
	static int counter_id = -1, counter;
	char buff[1024];
	char *s = str;

	while ((s = FUNC2(s, "@@")))
	{
		if (s[2] < '0' || s[2] > '9') { s++; continue; }

		if (counter_id != s[2] - '0') {
			counter_id = s[2] - '0';
			counter = 1;
		}
		FUNC0(buff, sizeof(buff), "%i%s", counter++, s + 3);
		FUNC1(s, buff);
	}
}