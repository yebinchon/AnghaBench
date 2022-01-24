#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ classId; int /*<<< orphan*/  objectId; } ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  TYPTYPE_COMPOSITE 129 
#define  TYPTYPE_ENUM 128 
 scalar_t__ TypeRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

Node *
FUNC7(const ObjectAddress *address)
{
	FUNC0(address->classId == TypeRelationId);

	switch (FUNC6(address->objectId))
	{
		case TYPTYPE_ENUM:
		{
			return (Node *) FUNC2(address->objectId);
		}

		case TYPTYPE_COMPOSITE:
		{
			return (Node *) FUNC1(address->objectId);
		}

		default:
		{
			FUNC3(ERROR, (FUNC5("unsupported type to generate create statement for"),
							FUNC4("only enum and composite types can be recreated")));
		}
	}
}