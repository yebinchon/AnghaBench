#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  UnicastCount; int /*<<< orphan*/  UnicastBytes; int /*<<< orphan*/  BroadcastCount; int /*<<< orphan*/  BroadcastBytes; } ;
struct TYPE_6__ {int /*<<< orphan*/  UnicastCount; int /*<<< orphan*/  UnicastBytes; int /*<<< orphan*/  BroadcastCount; int /*<<< orphan*/  BroadcastBytes; } ;
struct TYPE_7__ {TYPE_1__ Send; TYPE_2__ Recv; } ;
typedef  TYPE_3__ TRAFFIC ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC1(PACK *p, TRAFFIC *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "Recv.BroadcastBytes", t->Recv.BroadcastBytes);
	FUNC0(p, "Recv.BroadcastCount", t->Recv.BroadcastCount);
	FUNC0(p, "Recv.UnicastBytes", t->Recv.UnicastBytes);
	FUNC0(p, "Recv.UnicastCount", t->Recv.UnicastCount);
	FUNC0(p, "Send.BroadcastBytes", t->Send.BroadcastBytes);
	FUNC0(p, "Send.BroadcastCount", t->Send.BroadcastCount);
	FUNC0(p, "Send.UnicastBytes", t->Send.UnicastBytes);
	FUNC0(p, "Send.UnicastCount", t->Send.UnicastCount);
}