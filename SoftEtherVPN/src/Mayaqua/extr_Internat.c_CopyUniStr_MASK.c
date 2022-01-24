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
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

wchar_t *FUNC3(wchar_t *str)
{
	UINT len;
	wchar_t *dst;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	len = FUNC2(str);
	dst = FUNC0((len + 1) * sizeof(wchar_t));
	FUNC1(dst, 0, str);

	return dst;
}