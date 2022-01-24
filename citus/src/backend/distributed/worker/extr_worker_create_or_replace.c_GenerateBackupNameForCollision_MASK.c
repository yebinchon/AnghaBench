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
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (int /*<<< orphan*/  const*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
#define  OCLASS_PROC 129 
#define  OCLASS_TYPE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static char *
FUNC6(const ObjectAddress *address)
{
	switch (FUNC5(address))
	{
		case OCLASS_PROC:
		{
			return FUNC0(address);
		}

		case OCLASS_TYPE:
		{
			return FUNC1(address);
		}

		default:
		{
			FUNC2(ERROR, (FUNC4("unsupported object to construct a rename statement"),
							FUNC3(
								"unable to generate a backup name for the old type")));
		}
	}
}