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
typedef  int /*<<< orphan*/  cmd ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,char**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdline ; 

int FUNC10(int argc, char *argv[])
{
	bool memchk = false;
	UINT i;
	char cmd[MAX_SIZE];
	char *s;
	int status = 0;

	FUNC5();

	cmd[0] = 0;
	if (argc >= 2)
	{
		for (i = 1;i < (UINT)argc;i++)
		{
			s = argv[i];
			if (s[0] == '/')
			{
				if (!FUNC7(s, "/memcheck"))
				{
					memchk = true;
				}
			}
			else
			{
				FUNC8(cmd, sizeof(cmd), &s[0]);
			}
		}
	}

	FUNC4(memchk, true, argc, argv);
	FUNC0(true);
	FUNC3();
	FUNC6();
	status = FUNC9(cmdline);
	FUNC1();
	FUNC2();

	return status;
}