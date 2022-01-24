#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {scalar_t__ cluster; scalar_t__ sector; int offset; } ;
struct TYPE_11__ {TYPE_2__ dataEnd; TYPE_2__ dataStart; } ;
struct TYPE_9__ {int /*<<< orphan*/  cache; } ;
typedef  TYPE_1__ PARTITION ;
typedef  TYPE_2__ DIR_ENTRY_POSITION ;
typedef  TYPE_3__ DIR_ENTRY ;

/* Variables and functions */
 int DIR_ENTRY_DATA_SIZE ; 
 int /*<<< orphan*/  DIR_ENTRY_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 

bool FUNC4 (PARTITION* partition, DIR_ENTRY* entry)
{
   DIR_ENTRY_POSITION entryStart = entry->dataStart;
   DIR_ENTRY_POSITION entryEnd = entry->dataEnd;
   bool entryStillValid;
   bool finished;
   uint8_t entryData[DIR_ENTRY_DATA_SIZE];

   /* Create an empty directory entry to overwrite the old ones with */
   for ( entryStillValid = true, finished = false;
         entryStillValid && !finished;
         entryStillValid = FUNC2 (partition, &entryStart, false))
   {
      FUNC0 (partition->cache, entryData, FUNC3(partition, entryStart.cluster) + entryStart.sector, entryStart.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);
      entryData[0] = DIR_ENTRY_FREE;
      FUNC1 (partition->cache, entryData, FUNC3(partition, entryStart.cluster) + entryStart.sector, entryStart.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);
      if ((entryStart.cluster == entryEnd.cluster) && (entryStart.sector == entryEnd.sector) && (entryStart.offset == entryEnd.offset))
         finished = true;
   }

   if (!entryStillValid)
      return false;

   return true;
}