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
struct TYPE_3__ {int HamMode; int /*<<< orphan*/  pData; } ;
typedef  TYPE_1__ IO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool FUNC1(IO *o, UINT mode, int offset)
{
	// Validate arguments
	if (o == NULL)
	{
		return false;
	}

	if (o->HamMode == false)
	{
		return FUNC0(o->pData, mode, offset);
	}
	else
	{
		return false;
	}
}