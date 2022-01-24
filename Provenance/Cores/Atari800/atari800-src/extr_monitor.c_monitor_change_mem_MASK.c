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
typedef  int UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 scalar_t__ MEMORY_HARDWARE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__* MEMORY_attrib ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(UWORD *addr)
{
	UWORD temp = 0;
	FUNC4(addr);
	while (FUNC4(&temp)) {
#ifdef PAGED_ATTRIB
		if (MEMORY_writemap[*addr >> 8] != NULL && MEMORY_writemap[*addr >> 8] != MEMORY_ROM_PutByte)
			(*MEMORY_writemap[*addr >> 8])(*addr, (UBYTE) temp);
#else
		if (MEMORY_attrib[*addr] == MEMORY_HARDWARE)
			FUNC0(*addr, (UBYTE) temp);
#endif
		else /* RAM, ROM */
			FUNC2(*addr, (UBYTE) temp);
		(*addr)++;
		if (temp > 0xff) {
#ifdef PAGED_ATTRIB
			if (MEMORY_writemap[*addr >> 8] != NULL && MEMORY_writemap[*addr >> 8] != MEMORY_ROM_PutByte)
				(*MEMORY_writemap[*addr >> 8])(*addr, (UBYTE) (temp >> 8));
#else
			if (MEMORY_attrib[*addr] == MEMORY_HARDWARE)
				FUNC0(*addr, (UBYTE) (temp >> 8));
#endif
			else /* RAM, ROM */
				FUNC2(*addr, (UBYTE) (temp >> 8));
			(*addr)++;
		}
	}
}