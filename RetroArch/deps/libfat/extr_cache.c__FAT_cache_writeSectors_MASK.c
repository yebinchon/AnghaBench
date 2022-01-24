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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ sec_t ;
struct TYPE_7__ {scalar_t__ bytesPerSector; } ;
struct TYPE_6__ {scalar_t__ sector; scalar_t__ count; int dirty; scalar_t__ cache; } ;
typedef  TYPE_1__ CACHE_ENTRY ;
typedef  TYPE_2__ CACHE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,scalar_t__) ; 

bool FUNC2 (CACHE* cache, sec_t sector, sec_t numSectors, const void* buffer)
{
	sec_t sec;
	sec_t secs_to_write;
	CACHE_ENTRY* entry;
	const uint8_t *src = (const uint8_t *)buffer;

	while(numSectors>0)
	{
		entry = FUNC0(cache,sector);
		if(entry==NULL) return false;

		sec = sector - entry->sector;
		secs_to_write = entry->count - sec;
		if(secs_to_write>numSectors) secs_to_write = numSectors;

		FUNC1(entry->cache + (sec*cache->bytesPerSector),src,(secs_to_write*cache->bytesPerSector));

		src += (secs_to_write*cache->bytesPerSector);
		sector += secs_to_write;
		numSectors -= secs_to_write;

		entry->dirty = true;
	}
	return true;
}