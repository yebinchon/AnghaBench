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

/* Variables and functions */
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

void FUNC4(char *dst, char *src)
{
	char str[MAX_PATH];
	int i,len;
	char c;
	char tmp[MAX_PATH];
	int wp;
	if (src)
	{
		FUNC2(str, src);
	}
	else
	{
		FUNC2(str, dst);
	}
	FUNC0(str, NULL);
	wp = 0;
	len = FUNC3(str);
	dst[0] = 0;
	for (i = 0;i < len;i++)
	{
		c = str[i];
		switch (c)
		{
		case '\\':
			tmp[wp] = 0;
			wp = 0;
			FUNC1(dst, tmp);
			FUNC1(dst, "\\");
			break;
		default:
			tmp[wp] = c;
			wp++;
			break;
		}
	}
	FUNC0(dst, NULL);
}