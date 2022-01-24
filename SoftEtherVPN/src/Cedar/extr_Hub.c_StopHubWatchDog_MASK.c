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
struct TYPE_3__ {int HaltWatchDog; int /*<<< orphan*/ * WatchDogEvent; int /*<<< orphan*/ * WatchDogThread; } ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(HUB *h)
{
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	h->HaltWatchDog = true;
	FUNC2(h->WatchDogEvent);

	FUNC3(h->WatchDogThread, INFINITE);
	FUNC1(h->WatchDogThread);
	h->WatchDogThread = NULL;
	h->HaltWatchDog = false;

	FUNC0(h->WatchDogEvent);
	h->WatchDogEvent = NULL;
}