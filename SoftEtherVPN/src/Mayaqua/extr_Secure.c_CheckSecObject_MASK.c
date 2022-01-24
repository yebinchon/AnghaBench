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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int SessionCreated; int /*<<< orphan*/  Error; } ;
typedef  int /*<<< orphan*/  SEC_OBJ ;
typedef  TYPE_1__ SECURE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEC_ERROR_BAD_PARAMETER ; 
 int /*<<< orphan*/  SEC_ERROR_NO_SESSION ; 

bool FUNC2(SECURE *sec, char *name, UINT type)
{
	SEC_OBJ *obj;
	// Validate arguments
	if (sec == NULL)
	{
		return false;
	}
	if (name == NULL)
	{
		sec->Error = SEC_ERROR_BAD_PARAMETER;
		return false;
	}
	if (sec->SessionCreated == false)
	{
		sec->Error = SEC_ERROR_NO_SESSION;
		return 0;
	}

	obj = FUNC0(sec, name, type);

	if (obj == NULL)
	{
		return false;
	}
	else
	{
		FUNC1(obj);
		return true;
	}
}