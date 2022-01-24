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
typedef  int /*<<< orphan*/  RPC ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

PACK *FUNC2(RPC *rpc, char *function_name, PACK *p)
{
	// Validate arguments
	if (rpc == NULL || function_name == NULL)
	{
		return NULL;
	}
	if (p == NULL)
	{
		p = FUNC0();
	}

//	Debug("Admin RPC Call: %s\n", function_name);

	return FUNC1(rpc, function_name, p);
}