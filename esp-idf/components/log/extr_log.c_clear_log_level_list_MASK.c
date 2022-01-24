#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uncached_tag_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ s_log_cache_entry_count ; 
 scalar_t__ s_log_cache_max_generation ; 
 scalar_t__ s_log_cache_misses ; 
 int /*<<< orphan*/  s_log_tags ; 

void FUNC3(void)
{
    uncached_tag_entry_t *it;
    while((it = FUNC0(&s_log_tags)) != NULL) {
        FUNC1(&s_log_tags, entries );
        FUNC2(it);
    }
    s_log_cache_entry_count = 0;
    s_log_cache_max_generation = 0;
#ifdef LOG_BUILTIN_CHECKS
    s_log_cache_misses = 0;
#endif
}