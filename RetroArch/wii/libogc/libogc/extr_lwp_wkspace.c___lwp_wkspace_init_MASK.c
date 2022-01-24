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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  PPC_ALIGNMENT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __wkspace_heap ; 
 int /*<<< orphan*/  __wkspace_heap_size ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(u32 size)
{
	u32 arLo,level,dsize;

	// Get current ArenaLo and adjust to 32-byte boundary
	FUNC3(level);
	arLo = FUNC0(FUNC1());
	dsize = (size - (arLo - (u32)FUNC1()));
	FUNC2((void*)(arLo+dsize));
	FUNC4(level);

	FUNC6((void*)arLo,0,dsize);
	__wkspace_heap_size += FUNC5(&__wkspace_heap,(void*)arLo,dsize,PPC_ALIGNMENT);
}