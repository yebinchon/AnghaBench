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
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(wchar_t **buf, wchar_t *insert, wchar_t *before)
{
	UINT tmpsize;
	wchar_t *tmp;

	if(buf == NULL || insert == NULL || before == NULL)
	{
		return;
	}

	tmpsize = (FUNC4(insert)+FUNC4(before)+1)*sizeof(wchar_t);
	tmp = (wchar_t*)FUNC1(tmpsize);
	FUNC3(tmp, tmpsize, insert);
	FUNC2(tmp, tmpsize, before);
	FUNC5(buf, before, tmp);
	FUNC0(tmp);
}