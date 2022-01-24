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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

UINT FUNC4(wchar_t *unistr, UINT size, char *utfstr)
{
	wchar_t *tmp;
	// Validate arguments
	if (unistr == NULL || utfstr == NULL)
	{
		FUNC2(unistr, size, L"");
		return 0;
	}

	tmp = FUNC0(utfstr);

	FUNC2(unistr, size, tmp);

	FUNC1(tmp);

	return FUNC3(unistr);
}