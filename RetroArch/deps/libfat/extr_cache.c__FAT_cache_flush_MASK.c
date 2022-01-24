#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int numberOfPages; TYPE_1__* cacheEntries; int /*<<< orphan*/  disc; } ;
struct TYPE_4__ {int dirty; int /*<<< orphan*/  cache; int /*<<< orphan*/  count; int /*<<< orphan*/  sector; } ;
typedef  TYPE_2__ CACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1 (CACHE* cache)
{
   unsigned int i;

   for (i = 0; i < cache->numberOfPages; i++)
   {
      if (cache->cacheEntries[i].dirty)
      {
         if (!FUNC0 (cache->disc, cache->cacheEntries[i].sector, cache->cacheEntries[i].count, cache->cacheEntries[i].cache))
            return false;
      }
      cache->cacheEntries[i].dirty = false;
   }

   return true;
}