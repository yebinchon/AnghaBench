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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*) ; 

wchar_t *FUNC4(char *str)
{
	wchar_t *uni;
	UINT uni_size;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	uni_size = FUNC0(str);
	if (uni_size == 0)
	{
		return FUNC1(L"");
	}
	uni = FUNC2(uni_size);
	FUNC3(uni, uni_size, str);

	return uni;
}