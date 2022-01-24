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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

bool FUNC9(wchar_t *filename, char *str, UINT str_size)
{
	BUF *b;
	bool ret = false;
	// Validate arguments
	if (filename == NULL || str == NULL)
	{
		return false;
	}

	b = FUNC5(filename);
	if (b == NULL)
	{
		return false;
	}

	while (true)
	{
		char *line = FUNC0(b);

		if (line == NULL)
		{
			break;
		}

		FUNC8(line);

		if (FUNC4(line) == false)
		{
			if (FUNC6(line, "#") == false && FUNC6(line, "//") == false && FUNC6(line, ";") == false &&
				FUNC3(line, "#") == false)
			{
				FUNC7(str, str_size, line);
				ret = true;
			}
		}

		FUNC1(line);
	}

	FUNC2(b);

	return ret;
}