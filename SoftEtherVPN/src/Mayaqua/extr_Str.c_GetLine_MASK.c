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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 

bool FUNC4(char *str, UINT size)
{
	bool ret;
	wchar_t *unistr;
	UINT unistr_size = (size + 1) * sizeof(wchar_t);

	unistr = FUNC1(unistr_size);

	ret = FUNC2(unistr, unistr_size);

	FUNC3(str, size, unistr);

	FUNC0(unistr);

	return ret;
}