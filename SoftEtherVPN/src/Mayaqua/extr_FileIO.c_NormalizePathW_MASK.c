#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  cd ;
struct TYPE_9__ {size_t NumTokens; int** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;
struct TYPE_10__ {int num_item; scalar_t__* p; } ;
typedef  TYPE_2__ SK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int*,char*) ; 
 scalar_t__ FUNC8 (int*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,...) ; 
 scalar_t__ FUNC10 (int*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int*,size_t,...) ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int*,int) ; 
 int /*<<< orphan*/  FUNC15 (int*,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int) ; 

void FUNC17(wchar_t *dst, UINT size, wchar_t *src)
{
	wchar_t tmp[MAX_SIZE];
	UNI_TOKEN_LIST *t;
	bool first_double_slash = false;
	bool first_single_slash = false;
#ifdef  OS_WIN32
	wchar_t win32_drive_char = 0;
#endif  // OS_WIN32
	bool is_full_path = false;
	UINT i;
	SK *sk;
	// Validate arguments
	if (dst == NULL || src == 0)
	{
		return;
	}

	// Convert the path (Win32, UNIX conversion)
	FUNC11(tmp, sizeof(tmp), src);
	FUNC0(tmp);
	FUNC13(tmp);

	// If the path begins with "./ " or " ../", replace it to the current directory
	if (FUNC8(tmp, L"./") || FUNC8(tmp, L".\\") ||
		FUNC8(tmp, L"../") || FUNC8(tmp, L"..\\") ||
		FUNC10(tmp, L".") == 0 || FUNC10(tmp, L"..") == 0)
	{
		wchar_t cd[MAX_SIZE];
		FUNC16(cd, sizeof(cd));

#ifdef	OS_WIN32
		Win32GetCurrentDirW(cd, sizeof(cd));
#else	// OS_WIN32
		FUNC14(cd, sizeof(cd));
#endif	// OS_WIN32

		if (FUNC8(tmp, L".."))
		{
			FUNC9(cd, sizeof(cd), L"/../");
			FUNC9(cd, sizeof(cd), tmp + 2);
		}
		else
		{
			FUNC9(cd, sizeof(cd), L"/");
			FUNC9(cd, sizeof(cd), tmp);
		}

		FUNC11(tmp, sizeof(tmp), cd);
	}

	// If the path starts with "~/", replace it with the home directory
	if (FUNC8(tmp, L"~/") || FUNC8(tmp, L"~\\"))
	{
		wchar_t tmp2[MAX_SIZE];
		FUNC1(tmp2, sizeof(tmp2));
		FUNC9(tmp2, sizeof(tmp2), L"/");
		FUNC9(tmp2, sizeof(tmp2), tmp + 2);
		FUNC11(tmp, sizeof(tmp), tmp2);
	}

	if (FUNC8(tmp, L"//") || FUNC8(tmp, L"\\\\"))
	{
        // Begin with "//" or "\\"
		first_double_slash = true;
		is_full_path = true;
	}
	else if (FUNC8(tmp, L"/") || FUNC8(tmp, L"\\"))
	{
		// Begin with "\"
		first_single_slash = true;
		is_full_path = true;
	}

#ifdef	OS_WIN32
	if (UniStrLen(tmp) >= 2)
	{
		if (tmp[1] == L':')
		{
			// The drive string representation of the Win32
			wchar_t tmp2[MAX_SIZE];
			is_full_path = true;
			win32_drive_char = tmp[0];
			UniStrCpy(tmp2, sizeof(tmp2), tmp + 2);
			UniStrCpy(tmp, sizeof(tmp), tmp2);
		}
	}
#endif	// OS_WIN32

	if (FUNC12(tmp) == 1 && (tmp[0] == L'/' || tmp[0] == L'\\'))
	{
		tmp[0] = 0;
	}

	// Tokenize
	t = FUNC7(tmp, L"/\\");

	sk = FUNC2();

	for (i = 0;i < t->NumTokens;i++)
	{
		wchar_t *s = t->Token[i];

		if (FUNC10(s, L".") == 0)
		{
			continue;
		}
		else if (FUNC10(s, L"..") == 0)
		{
			if (sk->num_item >= 1 && (first_double_slash == false || sk->num_item >= 2))
			{
				FUNC3(sk);
			}
		}
		else
		{
			FUNC4(sk, s);
		}
	}

	// Token concatenation
	FUNC11(tmp, sizeof(tmp), L"");

	if (first_double_slash)
	{
		FUNC9(tmp, sizeof(tmp), L"//");
	}
	else if (first_single_slash)
	{
		FUNC9(tmp, sizeof(tmp), L"/");
	}

#ifdef  OS_WIN32
	if (win32_drive_char != 0)
	{
		wchar_t d[2];
		d[0] = win32_drive_char;
		d[1] = 0;
		UniStrCat(tmp, sizeof(tmp), d);
		UniStrCat(tmp, sizeof(tmp), L":/");
	}
#endif  // OS_WIN32

	for (i = 0;i < sk->num_item;i++)
	{
		FUNC9(tmp, sizeof(tmp), (wchar_t *)sk->p[i]);
		if (i != (sk->num_item - 1))
		{
			FUNC9(tmp, sizeof(tmp), L"/");
		}
	}

	FUNC5(sk);

	FUNC6(t);

	FUNC0(tmp);

	FUNC11(dst, size, tmp);
}