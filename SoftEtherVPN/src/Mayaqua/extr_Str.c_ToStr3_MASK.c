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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3(char *str, UINT size, UINT64 v)
{
	char tmp[128];
	char tmp2[128];
	UINT i, len, wp;
	// Validate arguments
	if (str == NULL)
	{
		return;
	}

	FUNC2(tmp, v);

	wp = 0;
	len = FUNC1(tmp);

	for (i = len - 1;((int)i) >= 0;i--)
	{
		tmp2[wp++] = tmp[i];
	}
	tmp2[wp++] = 0;

	wp = 0;

	for (i = 0;i < len;i++)
	{
		if (i != 0 && (i % 3) == 0)
		{
			tmp[wp++] = ',';
		}
		tmp[wp++] = tmp2[i];
	}
	tmp[wp++] = 0;
	wp = 0;
	len = FUNC1(tmp);

	for (i = len - 1;((int)i) >= 0;i--)
	{
		tmp2[wp++] = tmp[i];
	}
	tmp2[wp++] = 0;

	FUNC0(str, size, tmp2);
}