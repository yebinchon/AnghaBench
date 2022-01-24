#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ num_item; } ;
struct TYPE_13__ {scalar_t__ Size; scalar_t__ SizeofData; } ;
struct TYPE_12__ {scalar_t__ Protocol; TYPE_4__* ReceivedBlocks; TYPE_1__* Session; } ;
struct TYPE_11__ {int /*<<< orphan*/  TotalRecvSize; int /*<<< orphan*/  TotalRecvSizeReal; } ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ CONNECTION ;
typedef  TYPE_3__ BLOCK ;

/* Variables and functions */
 scalar_t__ CONNECTION_TCP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ MAX_STORED_QUEUE_NUM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

void FUNC4(CONNECTION *c, BLOCK *block, bool no_lock)
{
	SESSION *s;
	// Validate arguments
	if (c == NULL || block == NULL)
	{
		return;
	}

	s = c->Session;
	
	if (c->Protocol == CONNECTION_TCP)
	{
		s->TotalRecvSizeReal += block->SizeofData;
		s->TotalRecvSize += block->Size;
	}

	if (no_lock == false)
	{
		FUNC2(c->ReceivedBlocks);
	}

	if (c->ReceivedBlocks->num_item < MAX_STORED_QUEUE_NUM)
	{
		FUNC1(c->ReceivedBlocks, block);
	}
	else
	{
		FUNC0(block);
	}

	if (no_lock == false)
	{
		FUNC3(c->ReceivedBlocks);
	}
}