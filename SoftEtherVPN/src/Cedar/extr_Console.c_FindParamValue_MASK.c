#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_6__ {char* Name; } ;
typedef  TYPE_1__ PARAM_VALUE ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

PARAM_VALUE *FUNC2(LIST *o, char *name)
{
	PARAM_VALUE t, *ret;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}
	if (name == NULL)
	{
		name = "";
	}

	FUNC1(&t, sizeof(t));
	t.Name = name;

	ret = FUNC0(o, &t);

	return ret;
}