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
typedef  int UINT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 

void FUNC5(char *str)
{
	char *buf, *tmp;
	UINT len, i, wp, wp2;
	BOOL flag;
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
	if (str[len - 1] != ' ' && str[len - 1] != '\t')
	{
		return;
	}

	buf = FUNC2(len + 1);
	tmp = FUNC2(len + 1);
	flag = FALSE;
	wp = 0;
	wp2 = 0;
	for (i = 0;i < len;i++)
	{
		if (str[i] != ' ' && str[i] != '\t')
		{
			FUNC0(buf + wp, tmp, wp2);
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