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
 size_t FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int*,int*) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(void)
{
	UWORD addr1;
	UWORD addr2;
	if (FUNC3(&addr1, &addr2) && addr1 <= addr2) {
		const char *filename;
		FILE *f;
		filename = FUNC4();
		if (filename == NULL)
			filename = "memdump.dat";
		f = FUNC1(filename, "wb");
		if (f == NULL)
			FUNC5(filename);
		else {
			size_t nbytes = addr2 - addr1 + 1;
			if (FUNC2(&MEMORY_mem[addr1], 1, addr2 - addr1 + 1, f) < nbytes)
				FUNC5(filename);
			FUNC0(f);
		}
	}
}