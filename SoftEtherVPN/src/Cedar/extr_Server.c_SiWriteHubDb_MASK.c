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
struct TYPE_3__ {int /*<<< orphan*/  AcList; int /*<<< orphan*/  CrlList; int /*<<< orphan*/  RootCertList; int /*<<< orphan*/  GroupList; int /*<<< orphan*/  UserList; } ;
typedef  TYPE_1__ HUBDB ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(FOLDER *f, HUBDB *db, bool no_save_ac_list)
{
	// Validate arguments
	if (f == NULL || db == NULL)
	{
		return;
	}

	FUNC5(FUNC0(f, "UserList"), db->UserList);
	FUNC4(FUNC0(f, "GroupList"), db->GroupList);
	FUNC2(FUNC0(f, "CertList"), db->RootCertList);
	FUNC3(FUNC0(f, "CrlList"), db->CrlList);

	if (no_save_ac_list == false)
	{
		FUNC1(FUNC0(f, "IPAccessControlList"), db->AcList);
	}
}