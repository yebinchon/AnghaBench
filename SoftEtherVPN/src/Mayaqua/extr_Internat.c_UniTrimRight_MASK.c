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
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int*) ; 

void FUNC5(wchar_t *str)
{
	wchar_t *buf, *tmp;
	UINT len, i, wp, wp2;
	bool flag;
	// Validate arguments
	if (str == NULL)
	{
		return;
	}
	len = FUNC4(str);
	if (len == 0)
	{
		return;
	}
	if (str[len - 1] != L' ' && str[len - 1] != L'\t')
	{
		return;
	}

	buf = FUNC2((len + 1) * sizeof(wchar_t));
	tmp = FUNC2((len + 1) * sizeof(wchar_t));
	flag = false;
	wp = wp2 = 0;
	for (i = 0;i < len;i++)
	{
		if (str[i] != L' ' && str[i] != L'\t')
		{
			FUNC0(&buf[wp], tmp, wp2 * sizeof(wchar_t));
			wp += wp2;
			wp2 = 0;
			buf[wp++] = str[i];
		}
		else
		{
			tmp[wp2++] = str[i];
		}
	}
	buf[wp] = 0;
	FUNC3(str, 0, buf);
	FUNC1(buf);
	FUNC1(tmp);
}