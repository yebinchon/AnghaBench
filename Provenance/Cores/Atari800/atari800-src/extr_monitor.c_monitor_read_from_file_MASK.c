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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * MEMORY_mem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int*,int*) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(UWORD *addr)
{
	const char *filename;
	filename = FUNC4();
	if (filename != NULL) {
		UWORD nbytes;
		if (FUNC3(addr, &nbytes) && *addr + nbytes <= 0x10000) {
			FILE *f = FUNC1(filename, "rb");
			if (f == NULL)
				FUNC5(filename);
			else {
				if (FUNC2(&MEMORY_mem[*addr], 1, nbytes, f) == 0)
					FUNC5(filename);
				FUNC0(f);
			}
		}
	}
}