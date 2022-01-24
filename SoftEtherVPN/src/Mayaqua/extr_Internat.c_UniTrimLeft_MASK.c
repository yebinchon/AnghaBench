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
typedef  int wchar_t ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int*) ; 

void FUNC4(wchar_t *str)
{
	wchar_t *buf;
	UINT len, i, wp;
	bool flag;
	// Validate arguments
	if (str == NULL)
	{
		return;
	}
	len = FUNC3(str);
	if (len == 0)
	{
		return;
	}
	if (str[0] != L' ' && str[0] != L'\t')
	{
		return;
	}

	buf = FUNC1((len + 1) * sizeof(wchar_t));
	flag = false;
	wp = 0;
	for (i = 0;i < len;i++)
	{
		if (str[i] != L' ' && str[i] != L'\t')
		{
			flag = true;
		}
		if (flag)
		{
			buf[wp++] = str[i];
		}
	}
	buf[wp] = 0;
	FUNC2(str, 0, buf);
	FUNC0(buf);
}