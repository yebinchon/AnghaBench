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
struct TYPE_7__ {int /*<<< orphan*/  link; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ KHRN_CACHE_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;
typedef  TYPE_2__ CACHE_ENTRY_T ;

/* Variables and functions */
 int CACHE_LOG2_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(CLIENT_THREAD_STATE_T *thread, KHRN_CACHE_T *cache, CACHE_ENTRY_T *entry)
{
   FUNC0(cache, (int)((uint8_t *)entry - cache->data) >> CACHE_LOG2_BLOCK_SIZE);

   FUNC1(&cache->map, entry->key);

   FUNC2(&entry->link);

   FUNC3(thread, (int)((uint8_t *)entry - cache->data));
}