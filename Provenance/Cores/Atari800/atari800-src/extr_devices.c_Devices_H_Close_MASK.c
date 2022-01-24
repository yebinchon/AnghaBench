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
 int CPU_regY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/ ** h_fp ; 
 size_t h_iocb ; 
 int /*<<< orphan*/ * h_tmpbuf ; 

__attribute__((used)) static void FUNC3(void)
{
	if (devbug)
		FUNC1("HHCLOS");
	if (!FUNC0())
		return;
	if (h_fp[h_iocb] != NULL) {
		FUNC2(h_fp[h_iocb], h_tmpbuf[h_iocb]);
		h_fp[h_iocb] = NULL;
	}
	CPU_regY = 1;
	CPU_ClrN;
}