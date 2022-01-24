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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int UINT ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (int) ; 

char *FUNC7(char *str)
{
	char *tmp;
	char *ret;
	char tmp2[16];
	UINT len;
	UINT wp, i;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	len = FUNC5(str);
	tmp = FUNC6(len * 3 + 2);
	if (len == 0)
	{
		// Empty character
		FUNC4(tmp, (len * 3 + 2), "$");
	}
	else
	{
		// Non null character
		wp = 0;
		for (i = 0;i < len;i++)
		{
			if (FUNC0(str[i]))
			{
				tmp[wp++] = str[i];
			}
			else
			{
				tmp[wp++] = '$';
				FUNC1(tmp2, sizeof(tmp2), "%02X", (UINT)str[i]);
				tmp[wp++] = tmp2[0];
				tmp[wp++] = tmp2[1];
			}
		}
	}
	ret = FUNC3(FUNC5(tmp) + 1);
	FUNC4(ret, 0, tmp);
	FUNC2(tmp);
	return ret;
}