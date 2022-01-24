#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_12__ {size_t count; TYPE_2__** items; } ;
struct TYPE_11__ {size_t count; char** names; TYPE_2__** values; } ;
struct TYPE_9__ {TYPE_3__* object; TYPE_4__* array; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ JSON_VALUE ;
typedef  TYPE_3__ JSON_OBJECT ;
typedef  TYPE_4__ JSON_ARRAY ;

/* Variables and functions */
 scalar_t__ JSON_TYPE_ARRAY ; 
 scalar_t__ JSON_TYPE_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char*,size_t,int,int) ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

PACK *FUNC4(JSON_VALUE *v)
{
	PACK *p = NULL;
	JSON_OBJECT *jo;
	if (v == NULL)
	{
		return NULL;
	}

	p = FUNC2();

	jo = FUNC1(v);

	if (jo != NULL)
	{
		UINT i;
		for (i = 0;i < jo->count;i++)
		{
			char *name = jo->names[i];
			JSON_VALUE *value = jo->values[i];

			if (value->type == JSON_TYPE_ARRAY)
			{
				UINT j;
				JSON_ARRAY *ja = value->value.array;

				for (j = 0;j < ja->count;j++)
				{
					if (ja->items[j]->type != JSON_TYPE_OBJECT)
					{
						FUNC0(p, ja->items[j], name, j, ja->count, false);
					}
					else
					{
						JSON_VALUE *v = ja->items[j];
						JSON_OBJECT *o = v->value.object;
						UINT k;

						for (k = 0;k < o->count;k++)
						{
							char *name2 = o->names[k];
							JSON_VALUE *value2 = o->values[k];

							FUNC3(p, name);
							FUNC0(p, value2, name2, j, ja->count, false);
							FUNC3(p, NULL);
						}
					}
				}
			}
			else
			{
				FUNC0(p, value, name, 0, 1, true);
			}
		}
	}

	return p;
}