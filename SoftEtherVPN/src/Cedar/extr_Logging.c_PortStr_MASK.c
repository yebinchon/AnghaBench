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
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

char *FUNC3(CEDAR *cedar, UINT port, bool udp)
{
	char tmp[MAX_SIZE];
	char *name;
	// Validate arguments
	if (cedar == NULL)
	{
		return NULL;
	}

	name = FUNC1(cedar, udp, port);

	if (name == NULL)
	{
		FUNC2(tmp, sizeof(tmp), "%u", port);
	}
	else
	{
		FUNC2(tmp, sizeof(tmp), "%s(%u)", name, port);
	}

	return FUNC0(tmp);
}