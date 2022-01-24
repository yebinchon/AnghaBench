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
 int CPU_regS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 

__attribute__((used)) static void FUNC3(void)
{
	int ts;
	for (ts = 0x101 + CPU_regS; ts < 0x200; ) {
		if (ts < 0x1ff) {
			UWORD ta = (UWORD) (FUNC1(ts) - 2);
			if (FUNC0(ta) == 0x20) {
				FUNC2("%04X: %02X %02X  %04X: JSR %04X\n",
					ts, FUNC0(ts), FUNC0(ts + 1), ta,
					FUNC1(ta + 1));
				ts += 2;
				continue;
			}
		}
		FUNC2("%04X: %02X\n", ts, FUNC0(ts));
		ts++;
	}
}