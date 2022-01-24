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
struct TYPE_3__ {int /*<<< orphan*/  KernelVersion; int /*<<< orphan*/  KernelName; int /*<<< orphan*/  OsVersion; int /*<<< orphan*/  OsVendorName; int /*<<< orphan*/  OsProductName; int /*<<< orphan*/  OsSystemName; int /*<<< orphan*/  OsServicePack; int /*<<< orphan*/  OsType; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ OS_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC2(PACK *p, OS_INFO *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "OsType", t->OsType);
	FUNC0(p, "OsServicePack", t->OsServicePack);
	FUNC1(p, "OsSystemName", t->OsSystemName);
	FUNC1(p, "OsProductName", t->OsProductName);
	FUNC1(p, "OsVendorName", t->OsVendorName);
	FUNC1(p, "OsVersion", t->OsVersion);
	FUNC1(p, "KernelName", t->KernelName);
	FUNC1(p, "KernelVersion", t->KernelVersion);
}