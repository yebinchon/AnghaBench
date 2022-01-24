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
 int /*<<< orphan*/  chunksize ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (size_t) ; 

void *
FUNC2(tsd_t *tsd, arena_t *arena, size_t size, bool zero,
    tcache_t *tcache)
{
	size_t usize;

	usize = FUNC1(size);
	if (usize == 0) {
		/* size_t overflow. */
		return (NULL);
	}

	return (FUNC0(tsd, arena, usize, chunksize, zero, tcache));
}