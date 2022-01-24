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
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC2 (scalar_t__) ; 

char *FUNC3(wchar_t *unistr)
{
	UINT size;
	char *ret;
	// Validate arguments
	if (unistr == NULL)
	{
		return NULL;
	}

	size = FUNC0(unistr);
	ret = FUNC2(size + sizeof(char));

	FUNC1((char *)ret, size, unistr);

	return ret;
}