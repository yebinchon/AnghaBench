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
typedef  int /*<<< orphan*/  VALUE ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  size_t UINT ;
struct TYPE_5__ {size_t num_value; int JsonHint_IsArray; int /*<<< orphan*/ ** values; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ ELEMENT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  VALUE_INT64 ; 
 void* FUNC5 (int,int) ; 

ELEMENT *FUNC6(PACK *p, char *name, UINT64 i, UINT index, UINT total)
{
	VALUE *v;
	ELEMENT *e;
	// Validate arguments
	if (p == NULL || name == NULL || total == 0)
	{
		return NULL;
	}

	v = FUNC3(i);
	e = FUNC2(p, name, VALUE_INT64);
	if (e != NULL)
	{
		if (e->num_value >= total)
		{
			FUNC1(e->values[index], VALUE_INT64);
			e->values[index] = v;
		}
		else
		{
			FUNC1(v, VALUE_INT64);
		}
	}
	else
	{
		e = FUNC5(sizeof(ELEMENT), true);
		FUNC4(e->name, sizeof(e->name), name);
		e->num_value = total;
		e->type = VALUE_INT64;
		e->values = FUNC5(sizeof(VALUE *) * total, true);
		e->values[index] = v;

		if (FUNC0(p, e) == false)
		{
			return NULL;
		}
	}

	e->JsonHint_IsArray = true;

	return e;
}