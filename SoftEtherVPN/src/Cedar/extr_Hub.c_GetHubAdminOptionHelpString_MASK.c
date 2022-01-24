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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 

wchar_t *FUNC3(char *name)
{
	char tmp[MAX_SIZE];
	wchar_t *ret;
	// Validate arguments
	if (name == NULL)
	{
		return L"";
	}

	FUNC0(tmp, sizeof(tmp), "HUB_AO_%s", name);

	ret = FUNC2(tmp);
	if (FUNC1(ret))
	{
		ret = FUNC2("HUB_AO_UNKNOWN");
	}

	return ret;
}