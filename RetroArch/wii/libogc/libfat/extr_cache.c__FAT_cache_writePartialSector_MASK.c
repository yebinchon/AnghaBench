#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int sec_t ;
struct TYPE_7__ {unsigned int bytesPerSector; } ;
struct TYPE_6__ {unsigned int sector; int dirty; scalar_t__ cache; } ;
typedef  TYPE_1__ CACHE_ENTRY ;
typedef  TYPE_2__ CACHE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 

bool FUNC2 (CACHE* cache, const void* buffer, sec_t sector, unsigned int offset, size_t size)
{
	sec_t sec;
	CACHE_ENTRY *entry;

	if (offset + size > cache->bytesPerSector) return false;

	entry = FUNC0(cache,sector);
	if(entry==NULL) return false;

	sec = sector - entry->sector;
	FUNC1(entry->cache + ((sec*cache->bytesPerSector) + offset),buffer,size);

	entry->dirty = true;
	return true;
}