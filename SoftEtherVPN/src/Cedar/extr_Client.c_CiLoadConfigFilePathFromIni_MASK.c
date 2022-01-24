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
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 

bool FUNC6(char *path, UINT size)
{
	char *tmp;
	LIST *o;
	bool ret = false;

	// Validate arguments
	if (path == NULL)
	{
		return false;
	}

	o = FUNC1();

	if (o == NULL)
	{
		return false;
	}

	FUNC5(path, size, "");

	tmp = FUNC2(o, "ConfigPath");
	FUNC4(path, size, tmp);

	if (FUNC3(path) == false)
	{
		ret = true;
	}
	else
	{
		ret = false;
	}

	FUNC0(o);

	return ret;
}