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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  tcache_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t chunksize ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC2(tsd_t *tsd, arena_t *arena, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache)
{

	if (alignment <= chunksize)
		return (FUNC0(tsd, arena, usize, zero, tcache));
	return (FUNC1(tsd, arena, usize, alignment, zero, tcache));
}