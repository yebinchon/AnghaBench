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
struct TYPE_4__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ ADMIN_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* FUNC1 (int) ; 

ADMIN_OPTION *FUNC2(char *name, UINT value)
{
	ADMIN_OPTION *a;
	// Validate arguments
	if (name == NULL)
	{
		return NULL;
	}

	a = FUNC1(sizeof(ADMIN_OPTION));
	FUNC0(a->Name, sizeof(a->Name), name);
	a->Value = value;

	return a;
}