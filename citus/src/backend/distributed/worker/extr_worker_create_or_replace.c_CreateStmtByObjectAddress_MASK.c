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
struct TYPE_5__ {int /*<<< orphan*/  objectId; } ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 char const* FUNC2 (int /*<<< orphan*/ ,int) ; 
#define  OCLASS_PROC 129 
#define  OCLASS_TYPE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (TYPE_1__ const*) ; 

__attribute__((used)) static const char *
FUNC6(const ObjectAddress *address)
{
	switch (FUNC5(address))
	{
		case OCLASS_PROC:
		{
			return FUNC2(address->objectId, false);
		}

		case OCLASS_TYPE:
		{
			return FUNC1(FUNC0(address));
		}

		default:
		{
			FUNC3(ERROR, (FUNC4(
								"unsupported object to construct a create statement")));
		}
	}
}