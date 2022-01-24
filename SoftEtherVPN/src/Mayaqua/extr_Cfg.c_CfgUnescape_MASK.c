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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (int) ; 

char *FUNC6(char *str)
{
	char *tmp;
	char *ret;
	char tmp2[16];
	UINT len, wp, i;
	UINT code;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	len = FUNC3(str);
	tmp = FUNC5(len + 1);
	wp = 0;
	if (len == 1 && str[0] == '$')
	{
		// Empty character
		tmp[0] = 0;
	}
	else
	{
		for (i = 0;i < len;i++)
		{
			if (str[i] != '$')
			{
				tmp[wp++] = str[i];
			}
			else
			{
				tmp2[0] = '0';
				tmp2[1] = 'x';
				tmp2[2] = str[i + 1];
				tmp2[3] = str[i + 2];
				i += 2;
				tmp2[4] = 0;
				code = FUNC4(tmp2);
				tmp[wp++] = (char)code;
			}
		}
	}
	ret = FUNC1(FUNC3(tmp) + 1);
	FUNC2(ret, FUNC3(tmp) + 1, tmp);
	FUNC0(tmp);
	return ret;
}