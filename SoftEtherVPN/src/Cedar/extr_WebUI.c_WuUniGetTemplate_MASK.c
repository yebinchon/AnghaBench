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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ INFINITE ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,char*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__**,scalar_t__*,char*) ; 

__attribute__((used)) static wchar_t *FUNC5(wchar_t **str, wchar_t *start, wchar_t *end, bool erase)
{
	UINT startidx, endidx, len, size, i;
	wchar_t *ret;

	if(str == NULL || *str == NULL || start == NULL || end == NULL)
	{
		return NULL;
	}

	startidx =	FUNC2(*str, start, 0);
	if(startidx == INFINITE)
	{
		return NULL;
	}
	startidx += FUNC3(start);

	endidx = FUNC2(*str, end, startidx);
	if(endidx == INFINITE)
	{
		return NULL;
	}

	len = endidx - startidx;
	size = (len + 1) * sizeof(wchar_t);
	ret = (wchar_t*)FUNC0(size);
	for(i=0; i<len; i++)
	{
		ret[i] = (*str)[startidx + i];
	}
	ret[i] = 0;

	if(erase)
	{
		wchar_t tmp[MAX_SIZE*10];
		FUNC1(tmp, sizeof(tmp), L"%s%s%s", start, ret, end);
		FUNC4(str, tmp, L"");
	}
	return ret;
}