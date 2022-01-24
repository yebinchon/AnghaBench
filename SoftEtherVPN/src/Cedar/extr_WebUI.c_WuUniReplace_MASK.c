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
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(wchar_t **buf, wchar_t *from, wchar_t *to)
{
	UINT dstsize;
	wchar_t *oldbuf;

	if(buf == NULL || from == NULL || to == NULL)
	{
		return;
	}

	oldbuf = *buf;

	dstsize = (FUNC2(*buf, from, to, true) + 1) * sizeof(wchar_t);
	*buf = (wchar_t*)FUNC1(dstsize);
	FUNC3(*buf, dstsize, oldbuf, from, to);
	FUNC0(oldbuf);
}