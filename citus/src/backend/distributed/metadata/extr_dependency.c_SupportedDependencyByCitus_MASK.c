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
struct TYPE_4__ {int /*<<< orphan*/  objectId; } ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EnableDependencyCreation ; 
#define  OCLASS_CLASS 134 
#define  OCLASS_PROC 133 
#define  OCLASS_SCHEMA 132 
#define  OCLASS_TYPE 131 
 int /*<<< orphan*/  RELKIND_COMPOSITE_TYPE ; 
#define  TYPTYPE_BASE 130 
#define  TYPTYPE_COMPOSITE 129 
#define  TYPTYPE_ENUM 128 
 int FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

bool
FUNC5(const ObjectAddress *address)
{
	if (!EnableDependencyCreation)
	{
		/*
		 * If the user has disabled object propagation we need to fall back to the legacy
		 * behaviour in which we only support schema creation
		 */
		switch (FUNC1(address))
		{
			case OCLASS_SCHEMA:
			{
				return true;
			}

			default:
			{
				return false;
			}
		}

		/* should be unreachable */
		FUNC0(false);
	}

	/*
	 * looking at the type of a object to see if we know how to create the object on the
	 * workers.
	 */
	switch (FUNC1(address))
	{
		case OCLASS_SCHEMA:
		{
			return true;
		}

		case OCLASS_PROC:
		{
			return true;
		}

		case OCLASS_TYPE:
		{
			switch (FUNC3(address->objectId))
			{
				case TYPTYPE_ENUM:
				case TYPTYPE_COMPOSITE:
				{
					return true;
				}

				case TYPTYPE_BASE:
				{
					/*
					 * array types should be followed but not created, as they get created
					 * by the original type.
					 */
					return FUNC4(address->objectId);
				}

				default:
				{
					/* type not supported */
					return false;
				}
			}

			/*
			 * should be unreachable, break here is to make sure the function has a path
			 * without return, instead of falling through to the next block */
			break;
		}

		case OCLASS_CLASS:
		{
			/*
			 * composite types have a reference to a relation of composite type, we need
			 * to follow those to get the dependencies of type fields.
			 */
			if (FUNC2(address->objectId) == RELKIND_COMPOSITE_TYPE)
			{
				return true;
			}

			return false;
		}

		default:
		{
			/* unsupported type */
			return false;
		}
	}
}