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
struct TYPE_4__ {int /*<<< orphan*/  AutoDeleteCheckDiskFreeSpaceMin; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  CfgRw; int /*<<< orphan*/  Port; } ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_1__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DISK_FREE_SPACE_DEFAULT ; 
 int /*<<< orphan*/  EL_ADMIN_PORT ; 
 int /*<<< orphan*/  EL_CONFIG_FILENAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool FUNC5(EL *e)
{
	FOLDER *root;
	bool ret = false;
	// Validate arguments
	if (e == NULL)
	{
		return false;
	}

	e->Port = EL_ADMIN_PORT;

	e->CfgRw = FUNC2(&root, EL_CONFIG_FILENAME);

	if (root != NULL)
	{
		FUNC1(e, root);

		FUNC0(root);
	}
	else
	{
		char *pass = "";
		FUNC3(e->HashedPassword, pass, FUNC4(pass));
		e->AutoDeleteCheckDiskFreeSpaceMin = DISK_FREE_SPACE_DEFAULT;
	}

	return ret;
}