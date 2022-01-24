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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (scalar_t__) ; 

LIST *FUNC6(char *str, UINT size)
{
	LIST *o;
	char *tmp;
	UINT tmp_size;
	UINT i;
	// Validate arguments
	if (str == NULL)
	{
		return NULL;
	}

	o = FUNC1(NULL);

	i = 0;
	while (true)
	{
		if (i >= size)
		{
			break;
		}
		if (*str == 0)
		{
			break;
		}

		tmp_size = FUNC4(str);
		tmp = FUNC5(tmp_size);
		FUNC2(tmp, tmp_size, str);
		FUNC0(o, tmp);
		str += FUNC3(str) + 1;
		i++;
	}

	return o;
}