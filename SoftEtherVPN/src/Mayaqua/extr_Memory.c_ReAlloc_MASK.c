#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int ZeroFree; scalar_t__ Size; int /*<<< orphan*/  Magic; } ;
typedef  TYPE_1__ MEMTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMTAG_MAGIC ; 
 void* FUNC6 (TYPE_1__*) ; 
 void* FUNC7 (scalar_t__,int) ; 
 TYPE_1__* FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

void *FUNC10(void *addr, UINT size)
{
	MEMTAG *tag;
	bool zerofree;
	// Validate arguments
	if (FUNC4(addr))
	{
		return NULL;
	}

	tag = FUNC8(addr);
	FUNC1(tag);

	zerofree = tag->ZeroFree;

	if (tag->Size == size)
	{
		// No size change
		return addr;
	}
	else
	{
		if (zerofree)
		{
			// Size changed (zero clearing required)
			void *new_p = FUNC7(size, true);

			if (tag->Size <= size)
			{
				// Size expansion
				FUNC2(new_p, addr, tag->Size);
			}
			else
			{
				// Size reduction
				FUNC2(new_p, addr, size);
			}

			// Release the old block
			FUNC3(addr);

			return new_p;
		}
		else
		{
			// Size changed
			MEMTAG *tag2 = FUNC5(tag, FUNC0(size));

			FUNC9(tag2, sizeof(MEMTAG));
			tag2->Magic = MEMTAG_MAGIC;
			tag2->Size = size;

			return FUNC6(tag2);
		}
	}
}