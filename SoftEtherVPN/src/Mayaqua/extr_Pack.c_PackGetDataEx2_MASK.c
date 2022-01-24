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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  ELEMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VALUE_DATA ; 

bool FUNC4(PACK *p, char *name, void *data, UINT size, UINT index)
{
	ELEMENT *e;
	// Validate arguments
	if (p == NULL || name == NULL)
	{
		return false;
	}

	e = FUNC3(p, name, VALUE_DATA);
	if (e == NULL)
	{
		return false;
	}
	if (FUNC2(e, index) != size)
	{
		return false;
	}
	FUNC0(data, FUNC1(e, index), FUNC2(e, index));
	return true;
}