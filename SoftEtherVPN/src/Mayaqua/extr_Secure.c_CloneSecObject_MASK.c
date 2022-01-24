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
struct TYPE_5__ {int /*<<< orphan*/  Type; int /*<<< orphan*/  Private; int /*<<< orphan*/  Object; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ SEC_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 

SEC_OBJ *FUNC2(SEC_OBJ *obj)
{
	SEC_OBJ *ret;
	// Validate arguments
	if (obj == NULL)
	{
		return NULL;
	}

	ret = FUNC1(sizeof(SEC_OBJ));
	ret->Name = FUNC0(obj->Name);
	ret->Object = obj->Object;
	ret->Private = obj->Private;
	ret->Type = obj->Type;

	return ret;
}