#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int IsEPass1000; int NumSlot; scalar_t__* SlotIdList; TYPE_1__* Api; TYPE_2__* Dev; int /*<<< orphan*/  Error; int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  DeviceName; } ;
struct TYPE_10__ {scalar_t__ (* C_GetSlotList ) (int,scalar_t__*,int*) ;} ;
typedef  TYPE_2__ SECURE_DEVICE ;
typedef  TYPE_3__ SECURE ;

/* Variables and functions */
 scalar_t__ CKR_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 scalar_t__ INFINITE ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  SEC_ERROR_NOERROR ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 TYPE_3__* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,scalar_t__*,int*) ; 
 scalar_t__ FUNC9 (int,scalar_t__*,int*) ; 

SECURE *FUNC10(UINT id)
{
	SECURE_DEVICE *dev = FUNC3(id);
	SECURE *sec;
	UINT err;

	if (dev == NULL)
	{
		return NULL;
	}

	sec = FUNC7(sizeof(SECURE));

	sec->lock = FUNC5();
	sec->Error = SEC_ERROR_NOERROR;
	sec->Dev = dev;

	// Get whether it's a ePass or not
	if (FUNC6(dev->DeviceName, "epass", 0, false) != INFINITE)
	{
		sec->IsEPass1000 = true;
	}

	// Load the module
	if (FUNC4(sec) == false)
	{
		FUNC0(sec);
		return NULL;
	}

	// Get the slot list
	sec->NumSlot = 0;
	if ((err = sec->Api->C_GetSlotList(true, NULL, &sec->NumSlot)) != CKR_OK || sec->NumSlot == 0)
	{
		// Failure
		FUNC2(sec);
		FUNC0(sec);
		return NULL;
	}

	sec->SlotIdList = (UINT *)FUNC7(sizeof(UINT) * sec->NumSlot);

	if (sec->Api->C_GetSlotList(TRUE, sec->SlotIdList, &sec->NumSlot) != CKR_OK)
	{
		// Failure
		FUNC1(sec->SlotIdList);
		sec->SlotIdList = NULL;
		FUNC2(sec);
		FUNC0(sec);
		return NULL;
	}

	return sec;
}