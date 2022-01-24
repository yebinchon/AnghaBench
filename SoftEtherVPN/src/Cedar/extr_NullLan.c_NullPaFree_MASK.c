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
struct TYPE_8__ {int Halt; int /*<<< orphan*/  Event; int /*<<< orphan*/  Cancel; int /*<<< orphan*/  PacketQueue; int /*<<< orphan*/  PacketGeneratorThread; } ;
struct TYPE_7__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_6__ {TYPE_3__* Param; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ NULL_LAN ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(SESSION *s)
{
	// Validate arguments
	NULL_LAN *n;
	BLOCK *b;
	if (s == NULL || (n = s->PacketAdapter->Param) == NULL)
	{
		return;
	}

	n->Halt = true;
	FUNC8(n->Event);

	FUNC10(n->PacketGeneratorThread, INFINITE);
	FUNC7(n->PacketGeneratorThread);

	FUNC3(n->PacketQueue);
	{
		while ((b = FUNC2(n->PacketQueue)))
		{
			FUNC1(b);
		}
	}
	FUNC9(n->PacketQueue);

	FUNC6(n->PacketQueue);

	FUNC4(n->Cancel);

	FUNC5(n->Event);

	s->PacketAdapter->Param = NULL;
	FUNC0(n);
}