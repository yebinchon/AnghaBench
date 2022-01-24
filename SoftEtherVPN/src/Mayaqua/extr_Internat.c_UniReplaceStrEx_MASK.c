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
typedef  scalar_t__ wchar_t ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int INFINITE ; 
 scalar_t__* FUNC2 (int) ; 
 int FUNC3 (scalar_t__*,scalar_t__*,scalar_t__*,int) ; 
 int FUNC4 (scalar_t__*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int,scalar_t__*) ; 
 int FUNC6 (scalar_t__*) ; 

UINT FUNC7(wchar_t *dst, UINT size, wchar_t *string, wchar_t *old_keyword, wchar_t *new_keyword, bool case_sensitive)
{
	UINT i, j, num, len_string, len_old, len_new, len_ret, wp;
	wchar_t *ret;
	// Validate arguments
	if (string == NULL || old_keyword == NULL || new_keyword == NULL)
	{
		return 0;
	}

	// Get the length of the string
	len_string = FUNC6(string);
	len_old = FUNC6(old_keyword);
	len_new = FUNC6(new_keyword);

	// Get the final string length
	len_ret = FUNC3(string, old_keyword, new_keyword, case_sensitive);
	// Memory allocation
	ret = FUNC2((len_ret + 1) * sizeof(wchar_t));
	ret[len_ret] = 0;

	// Search and Replace
	i = j = num = wp = 0;
	while (true)
	{
		i = FUNC4(string, old_keyword, i, case_sensitive);
		if (i == INFINITE)
		{
			FUNC0(&ret[wp], &string[j], (len_string - j) * sizeof(wchar_t));
			wp += len_string - j;
			break;
		}
		num++;
		FUNC0(&ret[wp], &string[j], (i - j) * sizeof(wchar_t));
		wp += i - j;
		FUNC0(&ret[wp], new_keyword, len_new * sizeof(wchar_t));
		wp += len_new;
		i += len_old;
		j = i;
	}

	// Copy of the search results
	FUNC5(dst, size, ret);

	// Memory release
	FUNC1(ret);

	return num;
}