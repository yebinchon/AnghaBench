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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 

wchar_t *FUNC4(char *utfstr)
{
	UINT size;
	wchar_t *ret;
	UINT utfstr_len;
	// Validate arguments
	if (utfstr == NULL)
	{
		return NULL;
	}

	utfstr_len = FUNC1(utfstr);

	size = FUNC0((BYTE *)utfstr, utfstr_len);
	ret = FUNC3(size + sizeof(wchar_t));
	FUNC2(ret, size, (BYTE *)utfstr, utfstr_len);

	return ret;
}