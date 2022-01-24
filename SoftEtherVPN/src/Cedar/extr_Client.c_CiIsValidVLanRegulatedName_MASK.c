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
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC1 (char*,char*) ; 

bool FUNC2(char *name)
{
	UINT i;
	// Validate arguments
	if (name == NULL)
	{
		return false;
	}

	for (i = 1;i < 128;i++)
	{
		char tmp[MAX_SIZE];

		FUNC0(tmp, sizeof(tmp), i);

		if (FUNC1(name, tmp) == 0)
		{
			return true;
		}
	}

	return false;
}