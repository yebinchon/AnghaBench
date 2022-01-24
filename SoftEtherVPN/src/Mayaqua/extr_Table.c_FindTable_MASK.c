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
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * TableList ; 

TABLE *FUNC3(char *name)
{
	TABLE *t, tt;
	// Validate arguments
	if (name == NULL || TableList == NULL)
	{
		return NULL;
	}

	tt.name = FUNC0(name);
	t = FUNC2(TableList, &tt);
	FUNC1(tt.name);

	return t;
}