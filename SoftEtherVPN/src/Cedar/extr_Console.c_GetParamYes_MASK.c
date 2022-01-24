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
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool FUNC5(LIST *o, char *name)
{
	char *s;
	char tmp[64];
	// Validate arguments
	if (o == NULL)
	{
		return false;
	}

	s = FUNC0(o, name);
	if (s == NULL)
	{
		return false;
	}

	FUNC2(tmp, sizeof(tmp), s);
	FUNC4(tmp);

	if (FUNC1(tmp, "y"))
	{
		return true;
	}

	if (FUNC1(tmp, "t"))
	{
		return true;
	}

	if (FUNC3(tmp) != 0)
	{
		return true;
	}

	return false;
}