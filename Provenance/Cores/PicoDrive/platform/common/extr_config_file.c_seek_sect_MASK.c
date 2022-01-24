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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(FILE *f, const char *section)
{
	char line[128], *tmp;
	int len;

	len = FUNC2(section);
	// seek to the section needed
	while (!FUNC0(f))
	{
		tmp = FUNC1(line, sizeof(line), f);
		if (tmp == NULL) break;

		if (line[0] != '[') continue; // not section start
		if (FUNC3(line + 1, section, len) == 0 && line[len+1] == ']')
			return 1; // found it
	}

	return 0;
}