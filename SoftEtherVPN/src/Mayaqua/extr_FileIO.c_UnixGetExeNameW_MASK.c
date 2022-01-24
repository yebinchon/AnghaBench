#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 
 int MAX_SIZE ; 
 TYPE_1__* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t) ; 

void FUNC11(wchar_t *name, UINT size, wchar_t *arg)
{
	UNI_TOKEN_LIST *t;
	char *path_str;
	wchar_t *path_str_w;
	bool ok = false;
	// Validate arguments
	if (name == NULL || arg == NULL)
	{
		return;
	}

	path_str = FUNC3();
	path_str_w = FUNC1(path_str);

	t = FUNC5(path_str_w);

	if (t != NULL)
	{
		UINT i;
		for (i = 0;i < t->NumTokens;i++)
		{
			wchar_t *s = t->Token[i];
			wchar_t tmp[MAX_SIZE];

			FUNC0(tmp, sizeof(tmp), s, arg);

			if (FUNC4(tmp))
			{
#ifdef	OS_UNIX
				if (UnixCheckExecAccessW(tmp) == false)
				{
					continue;
				}
#endif	// OS_UNIX
				ok = true;
				FUNC7(name, size, tmp);
				break;
			}
		}

		FUNC6(t);
	}

	FUNC2(path_str);
	FUNC2(path_str_w);

	if (ok == false)
	{
		// In the case of failing to find the path
#ifdef	OS_UNIX
		UnixGetCurrentDirW(name, size);
#else	// OS_UNIX
		FUNC10(name, size);
#endif	// OS_UNIX
		FUNC0(name, size, name, arg);
	}
}