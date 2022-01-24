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
typedef  int /*<<< orphan*/  tmp ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

bool FUNC9(char *name, char *str, UINT size)
{
	char tmp[MAX_SIZE];
	bool ret = false;
	BUF *b;
	// Validate arguments
	if (name == NULL || str == NULL)
	{
		return false;
	}

	FUNC7(str, size, name);

	FUNC1(tmp, sizeof(tmp), "/etc/sysconfig/networking/devices/ifcfg-%s", name);

	b = FUNC5(tmp);
	if (b != NULL)
	{
		char *line = FUNC0(b);

		if (FUNC4(line) == false)
		{
			if (FUNC6(line, "#"))
			{
				char tmp[MAX_SIZE];

				FUNC7(tmp, sizeof(tmp), line + 1);

				FUNC8(tmp);
				tmp[60] = 0;

				FUNC7(str, size, tmp);

				ret = true;
			}
		}

		FUNC2(line);

		FUNC3(b);
	}

	return ret;
}