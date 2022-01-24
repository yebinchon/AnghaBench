#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  func_name ;
struct TYPE_4__ {int /*<<< orphan*/ * (* Dispatch ) (TYPE_1__*,char*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ RPC ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int MAX_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 

PACK *FUNC2(RPC *r, PACK *p)
{
	char func_name[MAX_SIZE];
	// Validate arguments
	if (r == NULL || p == NULL)
	{
		return NULL;
	}

	if (FUNC0(p, "function_name", func_name, sizeof(func_name)) == false)
	{
		return NULL;
	}

	return r->Dispatch(r, func_name, p);
}