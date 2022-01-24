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
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

UNI_TOKEN_LIST *FUNC5(wchar_t *path)
{
	UNI_TOKEN_LIST *ret;
	wchar_t *tmp = FUNC1(path);
	wchar_t *split_str;
	UINT i;

	FUNC3(tmp);
	FUNC4(tmp);
	FUNC3(tmp);
	FUNC4(tmp);

#ifdef	OS_WIN32
	split_str = L";";
#else	// OS_WIN32
	split_str = L":";
#endif	// OS_WIN32

	ret = FUNC2(tmp, split_str);

	if (ret != NULL)
	{
		for (i = 0;i < ret->NumTokens;i++)
		{
			FUNC3(ret->Token[i]);
			FUNC4(ret->Token[i]);
			FUNC3(ret->Token[i]);
			FUNC4(ret->Token[i]);
		}
	}

	FUNC0(tmp);

	return ret;
}