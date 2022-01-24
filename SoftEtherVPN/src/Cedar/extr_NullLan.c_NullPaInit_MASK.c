#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  PacketGeneratorThread; scalar_t__ Id; int /*<<< orphan*/  MacAddr; int /*<<< orphan*/  Event; int /*<<< orphan*/  PacketQueue; int /*<<< orphan*/  Cancel; } ;
struct TYPE_8__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_7__ {void* Param; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ NULL_LAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NullPacketGenerateThread ; 
 TYPE_3__* FUNC5 (int) ; 

bool FUNC6(SESSION *s)
{
	NULL_LAN *n;
	static UINT id_seed = 0;
	// Validate arguments
	if (s == NULL)
	{
		return false;
	}

	id_seed++;

	n = FUNC5(sizeof(NULL_LAN));
	n->Id = id_seed;
	s->PacketAdapter->Param = (void *)n;

	n->Cancel = FUNC0();
	n->PacketQueue = FUNC2();
	n->Event = FUNC1();

	FUNC4(n->MacAddr, n->Id, 0);

	n->PacketGeneratorThread = FUNC3(NullPacketGenerateThread, n);

	return true;
}