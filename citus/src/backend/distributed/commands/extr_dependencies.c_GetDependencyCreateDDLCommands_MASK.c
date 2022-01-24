#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  objectId; } ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__ const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
#define  OCLASS_CLASS 131 
#define  OCLASS_PROC 130 
#define  OCLASS_SCHEMA 129 
#define  OCLASS_TYPE 128 
 int /*<<< orphan*/  RELKIND_COMPOSITE_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (void*) ; 

__attribute__((used)) static List *
FUNC12(const ObjectAddress *dependency)
{
	switch (FUNC8(dependency))
	{
		case OCLASS_CLASS:
		{
			/*
			 * types have an intermediate dependency on a relation (aka class), so we do
			 * support classes when the relkind is composite
			 */
			if (FUNC10(dependency->objectId) == RELKIND_COMPOSITE_TYPE)
			{
				return NIL;
			}

			/* if this relation is not supported, break to the error at the end */
			break;
		}

		case OCLASS_PROC:
		{
			return FUNC1(dependency);
		}

		case OCLASS_SCHEMA:
		{
			const char *schemaDDLCommand = FUNC2(dependency->objectId);

			if (schemaDDLCommand == NULL)
			{
				/* no schema to create */
				return NIL;
			}

			return FUNC11((void *) schemaDDLCommand);
		}

		case OCLASS_TYPE:
		{
			return FUNC3(dependency);
		}

		default:
		{
			break;
		}
	}

	/*
	 * make sure it fails hard when in debug mode, leave a hint for the user if this ever
	 * happens in production
	 */
	FUNC0(false);
	FUNC4(ERROR, (FUNC7("unsupported object %s for distribution by citus",
						   FUNC9(dependency)),
					FUNC5(
						"citus tries to recreate an unsupported object on its workers"),
					FUNC6("please report a bug as this should not be happening")));
}