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

/* Variables and functions */
 int /*<<< orphan*/  CPU_ClrN ; 
 int /*<<< orphan*/  CPU_SetN ; 
 int CPU_regA ; 
 int CPU_regY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** h_fp ; 
 size_t h_iocb ; 
 char* h_lastop ; 
 scalar_t__* h_textmode ; 

__attribute__((used)) static void FUNC4(void)
{
	if (devbug)
		FUNC1("HHWRIT");
	if (!FUNC0())
		return;
	if (h_fp[h_iocb] != NULL) {
		int ch;
		if (h_lastop[h_iocb] == 'r')
			FUNC3(h_fp[h_iocb], 0, SEEK_CUR);
		h_lastop[h_iocb] = 'w';
		ch = CPU_regA;
		if (ch == 0x9b && h_textmode[h_iocb])
			ch = '\n';
		FUNC2(ch, h_fp[h_iocb]);
		CPU_regY = 1;
		CPU_ClrN;
	}
	else {
		CPU_regY = 135; /* attempted to write to a read-only device */
		            /* XXX: this seems to be what Atari DOSes return */
		CPU_SetN;
	}
}