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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  NoPromiscuous; int /*<<< orphan*/  LogSetting; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_ADD_DEVICE ;
typedef  int /*<<< orphan*/  EL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_CAPTURE_DEVICE_ADD_ERROR ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

UINT FUNC2(EL *e, RPC_ADD_DEVICE *t)
{
	if (FUNC0(e, t->DeviceName, &t->LogSetting, t->NoPromiscuous) == false)
	{
		return ERR_CAPTURE_DEVICE_ADD_ERROR;
	}

	FUNC1(e);

	return ERR_NO_ERROR;
}