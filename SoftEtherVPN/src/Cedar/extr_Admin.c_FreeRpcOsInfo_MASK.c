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
struct TYPE_3__ {int /*<<< orphan*/  KernelVersion; int /*<<< orphan*/  KernelName; int /*<<< orphan*/  OsVersion; int /*<<< orphan*/  OsVendorName; int /*<<< orphan*/  OsProductName; int /*<<< orphan*/  OsSystemName; } ;
typedef  TYPE_1__ OS_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(OS_INFO *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	FUNC0(t->OsSystemName);
	FUNC0(t->OsProductName);
	FUNC0(t->OsVendorName);
	FUNC0(t->OsVersion);
	FUNC0(t->KernelName);
	FUNC0(t->KernelVersion);
}