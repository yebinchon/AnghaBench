#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86_lcpu_t ;
struct TYPE_6__ {int maxcpus; int /*<<< orphan*/ ** cpus; struct TYPE_6__* next; } ;
typedef  TYPE_1__ x86_cpu_cache_t ;

/* Variables and functions */
 int MAX_CPUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int num_caches ; 
 TYPE_1__* x86_caches ; 

__attribute__((used)) static x86_cpu_cache_t *
FUNC2(void)
{
    x86_cpu_cache_t	*cache;
    int			i;

    if (x86_caches == NULL) {
	cache = FUNC1(sizeof(x86_cpu_cache_t) + (MAX_CPUS * sizeof(x86_lcpu_t *)));
	if (cache == NULL)
	    return(NULL);
    } else {
	cache = x86_caches;
	x86_caches = cache->next;
	cache->next = NULL;
    }

    FUNC0(cache, sizeof(x86_cpu_cache_t));
    cache->next = NULL;
    cache->maxcpus = MAX_CPUS;
    for (i = 0; i < cache->maxcpus; i += 1) {
	cache->cpus[i] = NULL;
    }

    num_caches += 1;

    return(cache);
}