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
typedef  int /*<<< orphan*/  ROUTE_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 () ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 

void FUNC3(ROUTE_ENTRY *e)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	if (FUNC1() == false)
	{
		return;
	}

	FUNC2(tmp, sizeof(tmp), e);

	FUNC0("%s\n", tmp);
}