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
typedef  scalar_t__ UBYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(void)
{
	/* static, so "S" without arguments repeats last search */
	static int n = 0;
	static UWORD addr1;
	static UWORD addr2;
	static UBYTE tab[64];
	UWORD hexval;
	if (FUNC2(&addr1, &addr2, &hexval)) {
		n = 0;
		do {
			tab[n++] = (UBYTE) hexval;
			if (hexval > 0xff && n < 64)
				tab[n++] = (UBYTE) (hexval >> 8);
		} while (n < 64 && FUNC1(&hexval));
	}
	if (n > 0) {
		int a;
		for (a = addr1; a <= addr2; a++) {
			int i = 0;
			while (FUNC0((UWORD) (a + i)) == tab[i]) {
				i++;
				if (i >= n) {
					FUNC3("Found at %04X\n", a);
					break;
				}
			}
		}
	}
}