#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int tag; int size; int /*<<< orphan*/  user; struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef  TYPE_1__ memblock_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_4__ {int size; TYPE_1__ blocklist; } ;

/* Variables and functions */
 TYPE_2__* mainzone ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1
( int		lowtag,
  int		hightag )
{
    memblock_t*	block;
	
    FUNC0 ("zone size: %i  location: %p\n",
	    mainzone->size,mainzone);
    
    FUNC0 ("tag range: %i to %i\n",
	    lowtag, hightag);
	
    for (block = mainzone->blocklist.next ; ; block = block->next)
    {
	if (block->tag >= lowtag && block->tag <= hightag)
	    FUNC0 ("block:%p    size:%7i    user:%p    tag:%3i\n",
		    block, block->size, block->user, block->tag);
		
	if (block->next == &mainzone->blocklist)
	{
	    // all blocks have been hit
	    break;
	}
	
	if ( (byte *)block + block->size != (byte *)block->next)
	    FUNC0 ("ERROR: block size does not touch the next block\n");

	if ( block->next->prev != block)
	    FUNC0 ("ERROR: next block doesn't have proper back link\n");

	if (!block->user && !block->next->user)
	    FUNC0 ("ERROR: two consecutive free blocks\n");
    }
}