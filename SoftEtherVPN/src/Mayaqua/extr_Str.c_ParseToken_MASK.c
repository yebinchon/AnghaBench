#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_3__ {char** Token; int NumTokens; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  token_lock ; 

TOKEN_LIST *FUNC8(char *src, char *separator)
{
	TOKEN_LIST *ret;
	char *tmp;
	char *str1, *str2;
	UINT len;
	UINT num;
	if (src == NULL)
	{
		ret = FUNC6(sizeof(TOKEN_LIST));
		ret->Token = FUNC6(0);
		return ret;
	}
	if (separator == NULL)
	{
		separator = " ,\t\r\n";
	}
	len = FUNC4(src);
	str1 = FUNC2(len + 1);
	str2 = FUNC2(len + 1);
	FUNC3(str1, 0, src);
	FUNC3(str2, 0, src);

	FUNC1(token_lock);
	{
		tmp = FUNC7(str1, separator);
		num = 0;
		while (tmp != NULL)
		{
			num++;
			tmp = FUNC7(NULL, separator);
		}
		ret = FUNC2(sizeof(TOKEN_LIST));
		ret->NumTokens = num;
		ret->Token = (char **)FUNC2(sizeof(char *) * num);
		num = 0;
		tmp = FUNC7(str2, separator);
		while (tmp != NULL)
		{
			ret->Token[num] = (char *)FUNC2(FUNC4(tmp) + 1);
			FUNC3(ret->Token[num], 0, tmp);
			num++;
			tmp = FUNC7(NULL, separator);
		}
	}
	FUNC5(token_lock);

	FUNC0(str1);
	FUNC0(str2);
	return ret;
}