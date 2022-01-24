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
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int MAX_SIZE ; 
 size_t FUNC2 (char*) ; 

void FUNC3(char *name, UINT size)
{
	char tmp[MAX_SIZE];
	UINT i, len;
	// Validate arguments
	if (name == NULL)
	{
		return;
	}

	FUNC1(tmp, sizeof(tmp));

	len = FUNC2(tmp);
	for (i = 0;i < len;i++)
	{
		if (tmp[i] == '.')
		{
			tmp[i] = 0;
		}
	}

	FUNC0(name, size, tmp);
}