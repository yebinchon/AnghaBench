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
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  exename ; 
 int /*<<< orphan*/  exename_w ; 

void FUNC12(int argc, char **argv)
{
	if (argc >= 1)
	{
#ifdef	OS_UNIX
		exename_w = CopyUtfToUni(argv[0]);
		exename = CopyUniToStr(exename_w);
#else	// OS_UNIX
		exename = FUNC0(argv[0]);
		exename_w = FUNC1(exename);
#endif	// OS_UNIX
	}
	if (argc < 2 || argv == NULL)
	{
		// No command-line string
		FUNC7(NULL);
	}
	else
	{
		// There are command-line string
		int i, total_len = 1;
		char *tmp;

		for (i = 1;i < argc;i++)
		{
			total_len += FUNC9(argv[i]) * 2 + 32;
		}
		tmp = FUNC11(total_len);

		for (i = 1;i < argc;i++)
		{
			UINT s_size = FUNC9(argv[i]) * 2;
			char *s = FUNC11(s_size);
			bool dq = (FUNC6(argv[i], " ", 0, true) != INFINITE);
			FUNC5(s, s_size, argv[i], "\"", "\"\"", true);
			if (dq)
			{
				FUNC8(tmp, total_len, "\"");
			}
			FUNC8(tmp, total_len, s);
			if (dq)
			{
				FUNC8(tmp, total_len, "\"");
			}
			FUNC8(tmp, total_len, " ");
			FUNC4(s);
		}

		FUNC10(tmp);
		FUNC7(tmp);
		FUNC4(tmp);
	}
}