#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int numberOfPages; struct TYPE_5__* cacheEntries; struct TYPE_5__* cache; } ;
typedef  TYPE_1__ CACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (CACHE* cache) {
	unsigned int i;
	// Clear out cache before destroying it
	FUNC0(cache);

	// Free memory in reverse allocation order
	for (i = 0; i < cache->numberOfPages; i++) {
		FUNC1 (cache->cacheEntries[i].cache);
	}
	FUNC1 (cache->cacheEntries);
	FUNC1 (cache);
}