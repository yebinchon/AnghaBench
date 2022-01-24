#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  IpPacketQueue; } ;
struct TYPE_7__ {int /*<<< orphan*/ * Packet; } ;
typedef  int /*<<< orphan*/  PKT ;
typedef  TYPE_1__ L3PACKET ;
typedef  TYPE_2__ L3IF ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 

void FUNC2(L3IF *f)
{
	L3PACKET *p;
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	// Process the packet came from another session
	while ((p = FUNC0(f->IpPacketQueue)))
	{
		PKT *pkt = p->Packet;

		// Send as an IP packet
		FUNC1(f, p);
	}
}