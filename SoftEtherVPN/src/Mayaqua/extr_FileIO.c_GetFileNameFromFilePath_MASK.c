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
 int MAX_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(char *dst, UINT size, char *filepath)
{
	char tmp[MAX_SIZE];
	UINT i, len, wp;
	// Validate arguments
	if (dst == NULL || filepath == NULL)
	{
		return;
	}

	len = FUNC0(FUNC2(filepath), (MAX_SIZE - 2));
	wp = 0;

	for (i = 0;i < (len + 1);i++)
	{
		char c = filepath[i];

		switch (c)
		{
		case '\\':
		case '/':
		case 0:
			tmp[wp] = 0;
			wp = 0;
			break;

		default:
			tmp[wp] = c;
			wp++;
			break;
		}
	}

	FUNC1(dst, size, tmp);
}