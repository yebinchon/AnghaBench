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
struct TYPE_4__ {void* SendQueue; void* IpWaitList; void* IpPacketQueue; void* ArpWaitTable; void* ArpTable; } ;
typedef  TYPE_1__ L3IF ;

/* Variables and functions */
 int /*<<< orphan*/ * CmpL3ArpEntry ; 
 int /*<<< orphan*/ * CmpL3ArpWaitTable ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 () ; 

void FUNC3(L3IF *f)
{
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	// MAC address generation
	FUNC0(f);

	// List generation
	f->ArpTable = FUNC1(CmpL3ArpEntry);
	f->ArpWaitTable = FUNC1(CmpL3ArpWaitTable);
	f->IpPacketQueue = FUNC2();
	f->IpWaitList = FUNC1(NULL);
	f->SendQueue = FUNC2();
}