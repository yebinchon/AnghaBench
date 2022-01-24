#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ const ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (TYPE_1__ const*) ; 

__attribute__((used)) static void
FUNC5(const ObjectAddress *functionAddress)
{
	/* captures the extension address during lookup */
	ObjectAddress extensionAddress = { 0 };

	if (FUNC0(functionAddress, &extensionAddress))
	{
		char *functionName = FUNC4(functionAddress);
		char *extensionName = FUNC4(&extensionAddress);
		FUNC1(ERROR, (FUNC3("unable to create a distributed function from functions "
							   "owned by an extension"),
						FUNC2("Function \"%s\" has a dependency on extension \"%s\". "
								  "Functions depending on an extension cannot be "
								  "distributed. Create the function by creating the "
								  "extension on the workers.", functionName,
								  extensionName)));
	}
}