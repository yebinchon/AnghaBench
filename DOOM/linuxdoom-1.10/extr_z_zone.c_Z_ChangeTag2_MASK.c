#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ id; int tag; scalar_t__ user; } ;
typedef  TYPE_1__ memblock_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PU_PURGELEVEL ; 
 scalar_t__ ZONEID ; 

void
FUNC1
( void*		ptr,
  int		tag )
{
    memblock_t*	block;
	
    block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));

    if (block->id != ZONEID)
	FUNC0 ("Z_ChangeTag: freed a pointer without ZONEID");

    if (tag >= PU_PURGELEVEL && (unsigned)block->user < 0x100)
	FUNC0 ("Z_ChangeTag: an owner is required for purgable blocks");

    block->tag = tag;
}