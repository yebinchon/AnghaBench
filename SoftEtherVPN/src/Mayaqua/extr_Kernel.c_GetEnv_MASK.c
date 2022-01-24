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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*) ; 

bool FUNC2(char *name, char *data, UINT size)
{
	char *ret;
	// Validate arguments
	if (name == NULL || data == NULL)
	{
		return false;
	}

	FUNC0(data, size, "");

	ret = FUNC1(name);
	if (ret == NULL)
	{
		return false;
	}

	FUNC0(data, size, ret);

	return true;
}