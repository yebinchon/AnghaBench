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
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(const char **defs, int defcount, char *tdef)
{
	int i, len;

	while (FUNC0(*tdef)) tdef++;
	len = FUNC2(tdef);
	for (i = 0; i < len; i++)
		if (tdef[i] == ' ' || tdef[i] == '\r' || tdef[i] == '\n') break;
	tdef[i] = 0;

	for (i = 0; i < defcount; i++)
	{
		if (FUNC1(defs[i], tdef) == 0)
			return 1;
	}

	return 0;
}