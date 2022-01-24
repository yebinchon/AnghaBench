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
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

bool FUNC7(BUF *buf, char *str, bool instr)
{
	bool ret = false;
	// Validate arguments
	if (buf == NULL || str == NULL)
	{
		return false;
	}

	if (FUNC3(str))
	{
		return false;
	}

	FUNC4(buf);

	while (ret == false)
	{
		char *line = FUNC0(buf);

		if (line == NULL)
		{
			break;
		}

		FUNC6(line);

		if (FUNC3(line) == false)
		{
			if (FUNC5(line, str) == 0)
			{
				ret = true;
			}

			if (instr)
			{
				if (FUNC2(str, line))
				{
					ret = true;
				}

				if (FUNC2(line, str))
				{
					ret = true;
				}
			}
		}

		FUNC1(line);
	}

	return ret;
}