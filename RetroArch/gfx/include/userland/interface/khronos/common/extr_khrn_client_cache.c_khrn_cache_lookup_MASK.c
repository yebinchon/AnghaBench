#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_17__ {int len; int key; int /*<<< orphan*/ * data; int /*<<< orphan*/  link; } ;
struct TYPE_16__ {int /*<<< orphan*/  prev; struct TYPE_16__* next; } ;
struct TYPE_14__ {TYPE_3__* next; } ;
struct TYPE_15__ {int /*<<< orphan*/ * data; TYPE_3__ end; int /*<<< orphan*/  map; TYPE_1__ start; } ;
typedef  TYPE_2__ KHRN_CACHE_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;
typedef  TYPE_3__ CACHE_LINK_T ;
typedef  TYPE_4__ CACHE_ENTRY_T ;

/* Variables and functions */
 int CACHE_LOG2_BLOCK_SIZE ; 
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC4 (void const*,int,int) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,void const*,int) ; 
 int xxx_first ; 

int FUNC16(CLIENT_THREAD_STATE_T *thread, KHRN_CACHE_T *cache, const void *data, int len, int sig)
{
   int key = FUNC4(data, len, sig);

   CACHE_ENTRY_T *entry = (CACHE_ENTRY_T *)FUNC9(&cache->map, key);

#ifdef SIMPENROSE_RECORD_OUTPUT
   if (xxx_first)
   {
      /* Cannot grow cache while things are locked for recording. So grow it now as much as we think we'll need */
      uint32_t i;
      xxx_first = false;
      for (i = 0; i < 15; i++)
         grow(thread, cache);
   }
#endif

   if (entry && entry->len >= len && !FUNC12(entry->data, data, len)) {
      /*
         move link to end of discard queue
      */

      FUNC11(&entry->link);
      FUNC10(&entry->link, cache->end.prev, &cache->end);
   } else {
      int size = FUNC0(FUNC1(len + sizeof(CACHE_ENTRY_T) - 1) + 2 - CACHE_LOG2_BLOCK_SIZE, 1);
      int block;

      CACHE_LINK_T *link;

      if (entry)
         FUNC2(thread, cache, entry);

      while (!FUNC6(cache, size) && FUNC3(thread, cache));

      for (link = cache->start.next; link != &cache->end && !FUNC6(cache, size); link = link->next)
         FUNC2(thread, cache, (CACHE_ENTRY_T *)link);

      if (!FUNC6(cache, size))
         return -1;

      block = FUNC5(cache, size);

      entry = (CACHE_ENTRY_T *)(cache->data + (block << CACHE_LOG2_BLOCK_SIZE));
      entry->len = len;
      entry->key = key;
      FUNC13(entry->data, data, len);

      if (!FUNC8(&cache->map, key, entry)) {
         FUNC7(cache, block);
         return -1;
      }

      FUNC10(&entry->link, cache->end.prev, &cache->end);

      FUNC14(thread, (int)((uint8_t *)entry - cache->data));
      FUNC15(thread, (int)(entry->data - cache->data), data, len);
   }

   return (int)((uint8_t *)entry - cache->data);
}