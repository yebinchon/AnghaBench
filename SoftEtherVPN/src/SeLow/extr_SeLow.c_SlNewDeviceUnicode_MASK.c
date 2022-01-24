#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  DriverObject; } ;
struct TYPE_16__ {int /*<<< orphan*/  Flags; scalar_t__ DeviceExtension; } ;
struct TYPE_15__ {int /*<<< orphan*/  OpenCloseLock; TYPE_1__* SymbolicLinkName; TYPE_1__* DeviceName; TYPE_3__* DeviceObject; } ;
struct TYPE_14__ {int /*<<< orphan*/  String; } ;
typedef  TYPE_1__ SL_UNICODE ;
typedef  TYPE_2__ SL_DEVICE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ DEVICE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  DO_DEVICE_INITIALIZING ; 
 int /*<<< orphan*/  FILE_DEVICE_TRANSPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 (char*) ; 
 TYPE_2__* FUNC8 (int) ; 
 TYPE_4__* sl ; 

SL_DEVICE *FUNC9(SL_UNICODE *u_device_name, SL_UNICODE *u_sym_name)
{
	SL_DEVICE *ret = NULL;
	DEVICE_OBJECT *dev_obj = NULL;
	NTSTATUS r;
	SL_UNICODE *sddl;

	sddl = FUNC7("D:P(A;;GA;;;SY)(A;;GA;;;BA)");

	/*r = IoCreateDevice(sl->DriverObject, sizeof(SL_DEVICE *),
		&u_device_name->String, FILE_DEVICE_TRANSPORT, 0, false, &dev_obj);*/

	r = FUNC0(sl->DriverObject, sizeof(SL_DEVICE *),
		&u_device_name->String, FILE_DEVICE_TRANSPORT, 0, false, FUNC5(sddl),
		NULL, &dev_obj);

	FUNC4(sddl);

	if (FUNC3(r))
	{
		dev_obj = NULL;
		goto LABEL_CLEANUP;
	}

	r = FUNC1(&u_sym_name->String, &u_device_name->String);
	if (FUNC3(r))
	{
		// May fail due to a bug in Windows Kernel
	}

	ret = FUNC8(sizeof(SL_DEVICE));
	if (ret == NULL)
	{
		goto LABEL_CLEANUP;
	}

	ret->DeviceObject = dev_obj;
	ret->DeviceName = u_device_name;
	ret->SymbolicLinkName = u_sym_name;
	*((SL_DEVICE **)dev_obj->DeviceExtension) = ret;

	dev_obj->Flags &= ~DO_DEVICE_INITIALIZING;

	ret->OpenCloseLock = FUNC6();

LABEL_CLEANUP:
	if (ret == NULL)
	{
		if (dev_obj != NULL)
		{
			FUNC2(dev_obj);
		}
	}

	return ret;
}