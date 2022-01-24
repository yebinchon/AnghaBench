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
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;
typedef  scalar_t__ UCHAR ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 size_t FUNC3 (char*) ; 
 char FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BUF *FUNC8(char *str)
{
	BUF *b;
	UINT len, i;
	char tmp[3];
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	len = FUNC3(str);
	tmp[0] = 0;
	b = FUNC0();
	for (i = 0;i < len;i++)
	{
		char c = str[i];
		c = FUNC4(c);
		if (('0' <= c && c <= '9') || ('A' <= c && c <= 'F'))
		{
			if (tmp[0] == 0)
			{
				tmp[0] = c;
				tmp[1] = 0;
			}
			else if (tmp[1] == 0)
			{
				UCHAR data;
				char tmp2[64];
				tmp[1] = c;
				tmp[2] = 0;
				FUNC2(tmp2, sizeof(tmp2), "0x");
				FUNC1(tmp2, sizeof(tmp2), tmp);
				data = (UCHAR)FUNC7(tmp2, NULL, 0);
				FUNC5(b, &data, 1);
				FUNC6(tmp, sizeof(tmp));	
			}
		}
		else if (c == ' ' || c == ',' || c == '-' || c == ':')
		{
			// Do Nothing
		}
		else
		{
			break;
		}
	}

	return b;
}