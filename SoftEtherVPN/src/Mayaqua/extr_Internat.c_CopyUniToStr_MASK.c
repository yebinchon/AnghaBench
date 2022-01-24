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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ *) ; 

char *FUNC4(wchar_t *unistr)
{
	char *str;
	UINT str_size;
	// Validate arguments
	if (unistr == NULL)
	{
		return NULL;
	}

	str_size = FUNC0(unistr);
	if (str_size == 0)
	{
		return FUNC1("");
	}
	str = FUNC2(str_size);
	FUNC3(str, str_size, unistr);

	return str;
}