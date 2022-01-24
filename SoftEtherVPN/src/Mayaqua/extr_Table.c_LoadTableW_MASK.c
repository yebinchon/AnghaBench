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
typedef  int /*<<< orphan*/  replace_name ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

bool FUNC8(wchar_t *filename)
{
	bool ret;
	BUF *b;
	wchar_t replace_name[MAX_PATH];

	FUNC7(replace_name, sizeof(replace_name));

	b = FUNC5("@table_name.txt");
	if (b != NULL)
	{
		char *s = FUNC0(b);
		if (s != NULL)
		{
			if (FUNC3(s) == false)
			{
				FUNC6(replace_name, sizeof(replace_name), s);
				filename = replace_name;
			}

			FUNC1(s);
		}
		FUNC2(b);
	}

	ret = FUNC4(filename);

	return ret;
}