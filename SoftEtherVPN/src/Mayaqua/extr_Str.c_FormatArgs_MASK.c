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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(char *buf, UINT size, char *fmt, va_list args)
{
	wchar_t *tag;
	wchar_t *ret;
	// Validate arguments
	if (buf == NULL || fmt == NULL)
	{
		return;
	}

	tag = FUNC0(fmt);
	ret = FUNC2(tag, args, true);

	FUNC3(buf, size, ret);
	FUNC1(ret);
	FUNC1(tag);
}