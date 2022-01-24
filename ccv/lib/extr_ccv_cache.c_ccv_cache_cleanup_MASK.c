#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ rnum; int /*<<< orphan*/  origin; scalar_t__ age; scalar_t__ size; int /*<<< orphan*/  ffree; } ;
typedef  TYPE_1__ ccv_cache_t ;
typedef  int /*<<< orphan*/  ccv_cache_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(ccv_cache_t* cache)
{
	if (cache->rnum > 0)
	{
		FUNC0(&cache->origin, cache->ffree);
		cache->size = 0;
		cache->age = 0;
		cache->rnum = 0;
		FUNC1(&cache->origin, 0, sizeof(ccv_cache_index_t));
	}
}