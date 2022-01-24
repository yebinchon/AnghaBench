#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int num_value; char* JsonHint_GroupName; int /*<<< orphan*/  name; scalar_t__ JsonHint_IsArray; } ;
struct TYPE_9__ {int /*<<< orphan*/ * elements; int /*<<< orphan*/ * json_subitem_names; } ;
typedef  TYPE_1__ PACK ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  JSON_VALUE ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;
typedef  TYPE_2__ ELEMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ INFINITE ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC19 (int) ; 

JSON_VALUE *FUNC20(PACK *p)
{
	JSON_VALUE *v;
	JSON_OBJECT *o;
	UINT i, j, k;
	LIST *json_group_id_list;
	if (p == NULL)
	{
		return FUNC7();
	}

	json_group_id_list = FUNC12();

	for (i = 0;i < FUNC11(p->elements);i++)
	{
		ELEMENT *e = FUNC10(p->elements, i);

		if (e->num_value >= 2 || e->JsonHint_IsArray)
		{
			if (FUNC3(e->JsonHint_GroupName) == false)
			{
				FUNC0(json_group_id_list, e->JsonHint_GroupName);
			}
		}
	}

	for (i = 0;i < FUNC11(p->json_subitem_names);i++)
	{
		char *group_name = FUNC10(p->json_subitem_names, i);

		if (FUNC3(group_name) == false)
		{
			FUNC0(json_group_id_list, group_name);
		}
	}

	v = FUNC7();
	o = FUNC9(v);

	for (k = 0;k < FUNC11(json_group_id_list);k++)
	{
		char *group_name = FUNC10(json_group_id_list, k);
		UINT array_count = INFINITE;
		bool ok = true;

		for (i = 0;i < FUNC11(p->elements);i++)
		{
			ELEMENT *e = FUNC10(p->elements, i);

			if (e->num_value >= 2 || e->JsonHint_IsArray)
			{
				if (FUNC17(e->JsonHint_GroupName, group_name) == 0)
				{
					if (array_count == INFINITE)
					{
						array_count = e->num_value;
					}
					else
					{
						if (array_count != e->num_value)
						{
							ok = false;
						}
					}
				}
			}
		}

		if (array_count == INFINITE)
		{
			array_count = 0;
		}

		if (ok)
		{
			JSON_VALUE **json_objects = FUNC19(sizeof(void *) * array_count);
			JSON_VALUE *jav = FUNC6();
			JSON_ARRAY *ja = FUNC4(jav);

			FUNC8(o, group_name, jav);

			for (j = 0;j < array_count;j++)
			{
				json_objects[j] = FUNC7();

				FUNC5(ja, json_objects[j]);
			}

			for (i = 0;i < FUNC11(p->elements);i++)
			{
				ELEMENT *e = FUNC10(p->elements, i);

				if (e->num_value >= 2 || e->JsonHint_IsArray)
				{
					if (FUNC17(e->JsonHint_GroupName, group_name) == 0)
					{
						for (j = 0;j < e->num_value;j++)
						{
							FUNC14(FUNC9(json_objects[j]),
								p, e, j);
						}
					}
				}
			}

			FUNC2(json_objects);
		}
	}

	for (i = 0;i < FUNC11(p->elements);i++)
	{
		ELEMENT *e = FUNC10(p->elements, i);

		if (e->num_value >= 2 || e->JsonHint_IsArray)
		{
			if (FUNC3(e->JsonHint_GroupName))
			{
				char *suffix = FUNC1(e);

				if (suffix != NULL)
				{
					JSON_VALUE *jav = FUNC6();
					JSON_ARRAY *ja = FUNC4(jav);
					char name[MAX_PATH];

					for (j = 0;j < e->num_value;j++)
					{
						FUNC13(ja, p, e, j);
					}

					FUNC18(name, sizeof(name), e->name);
					FUNC16(name, sizeof(name), suffix);

					FUNC8(o, name, jav);
				}
			}
		}
		else if (e->num_value == 1)
		{
			FUNC14(o, p, e, 0);
		}
	}

	FUNC15(json_group_id_list);

	return v;
}