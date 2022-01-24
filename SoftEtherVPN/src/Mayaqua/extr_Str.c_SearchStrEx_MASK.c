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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ INFINITE ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 

UINT FUNC6(char *string, char *keyword, UINT start, bool case_sensitive)
{
	UINT len_string, len_keyword;
	UINT i;
	char *cmp_string, *cmp_keyword;
	bool found;
	// Validate arguments
	if (string == NULL || keyword == NULL)
	{
		return INFINITE;
	}

	// Get the length of string
	len_string = FUNC3(string);
	if (len_string <= start)
	{
		// Value of start is invalid
		return INFINITE;
	}

	// Get the length of the keyword
	len_keyword = FUNC3(keyword);
	if (len_keyword == 0)
	{
		// There is no keyword in the string
		return INFINITE;
	}

	if ((len_string - start) < len_keyword)
	{
		// The keyword is longer than the string
		return INFINITE;
	}

	if (case_sensitive)
	{
		cmp_string = string;
		cmp_keyword = keyword;
	}
	else
	{
		cmp_string = FUNC1(len_string + 1);
		FUNC2(cmp_string, len_string + 1, string);
		cmp_keyword = FUNC1(len_keyword + 1);
		FUNC2(cmp_keyword, len_keyword + 1, keyword);
		FUNC4(cmp_string);
		FUNC4(cmp_keyword);
	}

	// Search
	found = false;
	for (i = start;i < (len_string - len_keyword + 1);i++)
	{
		// Compare
		if (!FUNC5(&cmp_string[i], cmp_keyword, len_keyword))
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