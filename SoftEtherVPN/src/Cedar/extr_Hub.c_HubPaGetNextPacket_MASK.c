#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_11__ {scalar_t__ Size; void* Buf; scalar_t__ IsFlooding; } ;
struct TYPE_10__ {int /*<<< orphan*/  PacketQueue; } ;
struct TYPE_9__ {int /*<<< orphan*/  Cedar; TYPE_1__* PacketAdapter; } ;
struct TYPE_8__ {scalar_t__ Param; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ HUB_PA ;
typedef  TYPE_4__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

UINT FUNC5(SESSION *s, void **data)
{
	UINT ret = 0;
	HUB_PA *pa = (HUB_PA *)s->PacketAdapter->Param;

	// Get one from the head of the queue
	FUNC3(pa->PacketQueue);
	{
		BLOCK *block = FUNC2(pa->PacketQueue);
		if (block == NULL)
		{
			// No queue
			ret = 0;
		}
		else
		{
			if (block->IsFlooding)
			{
				FUNC0(s->Cedar, -((int)block->Size));
			}

			// Found
			*data = block->Buf;
			ret = block->Size;
			// Release the memory of the structure of the block
			FUNC1(block);
		}
	}
	FUNC4(pa->PacketQueue);

	return ret;
}