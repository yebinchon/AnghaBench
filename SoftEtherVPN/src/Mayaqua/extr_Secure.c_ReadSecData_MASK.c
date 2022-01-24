#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int SessionCreated; int /*<<< orphan*/  Error; } ;
typedef  int /*<<< orphan*/  SEC_OBJ ;
typedef  TYPE_1__ SECURE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  SEC_DATA ; 
 int /*<<< orphan*/  SEC_ERROR_NO_SESSION ; 

int FUNC3(SECURE *sec, char *name, void *data, UINT size)
{
	UINT ret = 0;
	SEC_OBJ *obj;
	// Validate arguments
	if (sec == NULL || name == NULL || data == NULL)
	{
		return 0;
	}
	if (sec->SessionCreated == false)
	{
		sec->Error = SEC_ERROR_NO_SESSION;
		return 0;
	}

	// Read
	obj = FUNC0(sec, name, SEC_DATA);
	if (obj == NULL)
	{
		// Not found
		return 0;
	}

	// Read
	ret = FUNC2(sec, obj, data, size);

	FUNC1(obj);

	return ret;
}