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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ Id; } ;
typedef  TYPE_1__ SECURE_DEVICE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SecureDeviceList ; 

SECURE_DEVICE *FUNC2(UINT id)
{
	UINT i;

	if (id == 0)
	{
		return NULL;
	}

	for (i = 0;i < FUNC1(SecureDeviceList);i++)
	{
		SECURE_DEVICE *dev = FUNC0(SecureDeviceList, i);

		if (dev->Id == id)
		{
			return dev;
		}
	}

	return NULL;
}