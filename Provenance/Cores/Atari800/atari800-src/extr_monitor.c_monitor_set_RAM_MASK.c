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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	UWORD addr1;
	UWORD addr2;
	if (FUNC1(&addr1, &addr2)) {
		FUNC0(addr1, addr2);
		FUNC2("Changed memory from %04X to %04X into RAM\n",
			   addr1, addr2);
	}
}