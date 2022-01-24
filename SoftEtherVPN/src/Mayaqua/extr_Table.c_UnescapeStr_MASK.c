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
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (char*) ; 

void FUNC4(char *src)
{
	UINT i, len, wp;
	char *tmp;
	// Validate arguments
	if (src == NULL)
	{
		return;
	}
	
	len = FUNC3(src);
	tmp = FUNC1(len + 1);
	wp = 0;
	for (i = 0;i < len;i++)
	{
		if (src[i] == '\\')
		{
			i++;
			switch (src[i])
			{
			case 0:
				goto FINISH;
			case '\\':
				tmp[wp++] = '\\';
				break;
			case ' ':
				tmp[wp++] = ' ';
				break;
			case 'n':
			case 'N':
				tmp[wp++] = '\n';
				break;
			case 'r':
			case 'R':
				tmp[wp++] = '\r';
				break;
			case 't':
			case 'T':
				tmp[wp++] = '\t';
				break;
			}
		}
		else
		{
			tmp[wp++] = src[i];
		}
	}
FINISH:
	tmp[wp++] = 0;
	FUNC2(src, 0, tmp);
	FUNC0(tmp);
}