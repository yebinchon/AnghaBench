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
struct TYPE_5__ {scalar_t__ Magic; int /*<<< orphan*/  Size; scalar_t__ ZeroFree; } ;
typedef  TYPE_1__ MEMTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 

void FUNC5(void *addr)
{
	MEMTAG *tag;
	// Validate arguments
	if (FUNC1(addr))
	{
		return;
	}

	tag = FUNC3(addr);
	FUNC0(tag);

	if (tag->ZeroFree)
	{
		// Zero clear
		FUNC4(addr, tag->Size);
	}

	// Memory release
	tag->Magic = 0;
	FUNC2(tag);
}