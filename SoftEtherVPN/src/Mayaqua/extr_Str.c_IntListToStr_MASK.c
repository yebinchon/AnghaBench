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
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void FUNC6(char *str, UINT str_size, LIST *o, char *separate_str)
{
	UINT i;
	FUNC0(str, str_size);
	// Validate arguments
	if (o == NULL)
	{
		return;
	}
	if (FUNC1(separate_str))
	{
		separate_str = ", ";
	}

	for (i = 0;i < FUNC3(o);i++)
	{
		char tmp[MAX_SIZE];
		UINT *v = FUNC2(o, i);

		FUNC5(tmp, *v);

		FUNC4(str, str_size, tmp);

		if (i != (FUNC3(o) - 1))
		{
			FUNC4(str, str_size, separate_str);
		}
	}
}