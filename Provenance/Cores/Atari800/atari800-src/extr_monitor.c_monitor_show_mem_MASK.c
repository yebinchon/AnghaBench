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
typedef  char UBYTE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void FUNC4(UWORD *addr)
{
	int count = 16;
	FUNC1(addr);
	do {
		int i;
		FUNC2("%04X: ", *addr);
		for (i = 0; i < 16; i++)
			FUNC2("%02X ", FUNC0((UWORD) (*addr + i)));
		FUNC3(' ');
		for (i = 0; i < 16; i++) {
			UBYTE c;
			c = FUNC0(*addr);
			(*addr)++;
			FUNC3((c >= ' ' && c <= 'z' && c != '\x60') ? c : '.');
		}
		FUNC3('\n');
	} while (--count > 0);
}