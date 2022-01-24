#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {void* UnicastCount; void* UnicastBytes; void* BroadcastCount; void* BroadcastBytes; } ;
struct TYPE_6__ {void* UnicastCount; void* UnicastBytes; void* BroadcastCount; void* BroadcastBytes; } ;
struct TYPE_8__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
typedef  TYPE_3__ TRAFFIC ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 

void FUNC2(TRAFFIC *t, PACK *p, UINT i)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(t, sizeof(TRAFFIC));
	t->Recv.BroadcastBytes = FUNC0(p, "Ex.Recv.BroadcastBytes", i);
	t->Recv.BroadcastCount = FUNC0(p, "Ex.Recv.BroadcastCount", i);
	t->Recv.UnicastBytes = FUNC0(p, "Ex.Recv.UnicastBytes", i);
	t->Recv.UnicastCount = FUNC0(p, "Ex.Recv.UnicastCount", i);
	t->Send.BroadcastBytes = FUNC0(p, "Ex.Send.BroadcastBytes", i);
	t->Send.BroadcastCount = FUNC0(p, "Ex.Send.BroadcastCount", i);
	t->Send.UnicastBytes = FUNC0(p, "Ex.Send.UnicastBytes", i);
	t->Send.UnicastCount = FUNC0(p, "Ex.Send.UnicastCount", i);
}