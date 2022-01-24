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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

UINT FUNC4(void *data, UINT size, char *str, bool case_sensitive)
{
	UINT ret = INFINITE;
	char *tmp;
	// Validate arguments
	if (data == NULL || size == 0 || str == NULL)
	{
		return INFINITE;
	}

	tmp = FUNC3(size + 1);
	FUNC0(tmp, data, size);

	ret = FUNC2(tmp, str, 0, case_sensitive);

	FUNC1(tmp);

	return ret;
}