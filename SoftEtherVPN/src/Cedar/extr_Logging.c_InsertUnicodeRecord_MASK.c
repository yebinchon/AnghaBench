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
typedef  int /*<<< orphan*/  LOG ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC4 (scalar_t__) ; 

void FUNC5(LOG *g, wchar_t *unistr)
{
	char *str;
	UINT size;
	// Validate arguments
	if (g == NULL || unistr == NULL)
	{
		return;
	}

	size = FUNC0(unistr) + 32;
	str = FUNC4(size);

	FUNC3((BYTE *)str, size, unistr);
	FUNC2(g, str);
	FUNC1(str);
}