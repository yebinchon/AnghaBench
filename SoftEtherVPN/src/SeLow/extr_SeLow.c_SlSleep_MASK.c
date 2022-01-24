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
typedef  int __int64 ;
struct TYPE_3__ {int QuadPart; } ;
typedef  int /*<<< orphan*/  PKTIMER ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  KTIMER ;

/* Variables and functions */
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  NotificationTimer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(int milliSeconds)
{
	PKTIMER timer = FUNC4(sizeof(KTIMER));
	LARGE_INTEGER duetime;

	duetime.QuadPart = (__int64)milliSeconds * -10000;
	FUNC0(timer, NotificationTimer);
	FUNC1(timer, duetime, 0, NULL);

	FUNC2(timer, Executive, KernelMode, FALSE, NULL);

	FUNC3(timer);
}