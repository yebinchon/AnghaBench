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
struct TYPE_3__ {struct TYPE_3__* KernelVersion; struct TYPE_3__* KernelName; struct TYPE_3__* OsVersion; struct TYPE_3__* OsVendorName; struct TYPE_3__* OsProductName; struct TYPE_3__* OsSystemName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* os_info ; 

void FUNC1()
{
	if (os_info == NULL)
	{
		return;
	}

	FUNC0(os_info->OsSystemName);
	FUNC0(os_info->OsProductName);
	FUNC0(os_info->OsVendorName);
	FUNC0(os_info->OsVersion);
	FUNC0(os_info->KernelName);
	FUNC0(os_info->KernelVersion);
	FUNC0(os_info);

	os_info = NULL;
}