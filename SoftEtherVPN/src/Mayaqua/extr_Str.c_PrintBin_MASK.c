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
 int /*<<< orphan*/  FUNC0 (char*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

void FUNC4(void *data, UINT size)
{
	char *tmp;
	UINT i;
	// Validate arguments
	if (data == NULL)
	{
		return;
	}

	i = size * 3 + 1;
	tmp = FUNC2(i);
	FUNC0(tmp, i, data, size);
	FUNC3("%s\n", tmp);
	FUNC1(tmp);
}