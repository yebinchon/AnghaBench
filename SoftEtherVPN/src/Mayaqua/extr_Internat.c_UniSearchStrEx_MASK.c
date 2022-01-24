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
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INFINITE ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

UINT FUNC8(wchar_t *string, wchar_t *keyword, UINT start, bool case_sensitive)
{
	UINT len_string, len_keyword;
	UINT i;
	wchar_t *cmp_string, *cmp_keyword;
	bool found;
	// Validate arguments
	if (string == NULL || keyword == NULL)
	{
		return INFINITE;
	}

	// Get the length of string
	len_string = FUNC5(string);
	if (len_string <= start)
	{
		// Value of start is invalid
		return INFINITE;
	}

	// Get the length of the keyword
	len_keyword = FUNC5(keyword);
	if (len_keyword == 0)
	{
		// There is no keyword
		return INFINITE;
	}

	if (len_string < len_keyword)
	{
		return INFINITE;
	}

	if (len_string == len_keyword)
	{
		if (case_sensitive)
		{
			if (FUNC2(string, keyword) == 0)
			{
				return 0;
			}
			else
			{
				return INFINITE;
			}
		}
		else
		{
			if (FUNC3(string, keyword) == 0)
			{
				return 0;
			}
			else
			{
				return INFINITE;
			}
		}
	}

	if (case_sensitive)
	{
		cmp_string = string;
		cmp_keyword = keyword;
	}
	else
	{
		cmp_string = FUNC1((len_string + 1) * sizeof(wchar_t));
		FUNC4(cmp_string, (len_string + 1) * sizeof(wchar_t), string);
		cmp_keyword = FUNC1((len_keyword + 1) * sizeof(wchar_t));
		FUNC4(cmp_keyword, (len_keyword + 1) * sizeof(wchar_t), keyword);
		FUNC6(cmp_string);
		FUNC6(cmp_keyword);
	}

	// Search
	found = false;
	for (i = start;i < (len_string - len_keyword + 1);i++)
	{
		// Compare
		if (!FUNC7(&cmp_string[i], cmp_keyword, len_keyword))
		{
			// Found
			found = true;
			break;
		}
	}

	if (case_sensitive == false)
	{
		// Memory release
		FUNC0(cmp_keyword);
		FUNC0(cmp_string);
	}

	if (found == false)
	{
		return INFINITE;
	}
	return i;
}