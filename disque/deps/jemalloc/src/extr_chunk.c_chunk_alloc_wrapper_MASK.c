#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* (* alloc ) (void*,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ chunk_hooks_t ;
struct TYPE_8__ {int /*<<< orphan*/  ind; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  chunksize ; 
 scalar_t__ config_valgrind ; 
 void* FUNC3 (void*,size_t,size_t,int*,int*,int /*<<< orphan*/ ) ; 

void *
FUNC4(arena_t *arena, chunk_hooks_t *chunk_hooks, void *new_addr,
    size_t size, size_t alignment, bool *zero, bool *commit)
{
	void *ret;

	FUNC2(arena, chunk_hooks);
	ret = chunk_hooks->alloc(new_addr, size, alignment, zero, commit,
	    arena->ind);
	if (ret == NULL)
		return (NULL);
	if (config_valgrind && chunk_hooks->alloc != chunk_alloc_default)
		FUNC0(ret, chunksize);
	return (ret);
}