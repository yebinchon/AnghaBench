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
struct TYPE_4__ {int HamMode; int /*<<< orphan*/  HamBuf; int /*<<< orphan*/  pData; int /*<<< orphan*/  SetUpdateTime; int /*<<< orphan*/  SetCreateTime; scalar_t__ WriteMode; } ;
typedef  TYPE_1__ IO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_IO_CLOSE_COUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(IO *o, bool no_flush)
{
	// Validate arguments
	if (o == NULL)
	{
		return;
	}

	if (o->HamMode == false)
	{
		if (o->WriteMode)
		{
#ifdef	OS_WIN32
			Win32FileSetDate(o->pData, o->SetCreateTime, o->SetUpdateTime);
#endif	// OS_WIN32
		}

		FUNC3(o->pData, no_flush);
	}
	else
	{
		FUNC1(o->HamBuf);
	}
	FUNC0(o);

	// KS
	FUNC2(KS_IO_CLOSE_COUNT);
}