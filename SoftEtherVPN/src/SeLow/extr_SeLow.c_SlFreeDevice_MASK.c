#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  String; } ;
struct TYPE_5__ {int /*<<< orphan*/  OpenCloseLock; TYPE_2__* SymbolicLinkName; TYPE_2__* DeviceName; int /*<<< orphan*/  DeviceObject; } ;
typedef  TYPE_1__ SL_DEVICE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6(SL_DEVICE *dev)
{
	NTSTATUS r;
	// Validate arguments
	if (dev == NULL)
	{
		return;
	}

	r = FUNC1(&dev->SymbolicLinkName->String);
	if (FUNC2(r))
	{
		// May fail due to a bug in Windows Kernel
	}

	FUNC0(dev->DeviceObject);

	FUNC5(dev->DeviceName);
	FUNC5(dev->SymbolicLinkName);

	FUNC4(dev->OpenCloseLock);

	FUNC3(dev);
}