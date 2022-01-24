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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  MEMBER_SELECTOR_TXT_FILENAME ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

bool FUNC7(char *url, UINT url_size)
{
	BUF *b;
	bool ret = false;
	// Validate arguments
	if (url == NULL)
	{
		return false;
	}

	b = FUNC4(MEMBER_SELECTOR_TXT_FILENAME);
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

		FUNC6(line);

		if (FUNC3(line) == false && ret == false)
		{
			FUNC5(url, url_size, line);
			ret = true;
		}

		FUNC1(line);
	}

	FUNC2(b);

	return ret;
}