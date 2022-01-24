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
typedef  scalar_t__ UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_ClrN ; 
 int /*<<< orphan*/  CPU_SetN ; 
 scalar_t__ CPU_regA ; 
 int CPU_regY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int EOF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ devbug ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** h_fp ; 
 size_t h_iocb ; 
 int* h_lastbyte ; 
 char* h_lastop ; 
 scalar_t__* h_textmode ; 
 int /*<<< orphan*/ * h_wascr ; 

__attribute__((used)) static void FUNC5(void)
{
	if (devbug)
		FUNC1("HHREAD");
	if (!FUNC0())
		return;
	if (h_fp[h_iocb] != NULL) {
		int ch;
		if (h_lastop[h_iocb] != 'r') {
			if (h_lastop[h_iocb] == 'w')
				FUNC4(h_fp[h_iocb], 0, SEEK_CUR);
			h_lastbyte[h_iocb] = FUNC3(h_fp[h_iocb]);
			h_lastop[h_iocb] = 'r';
		}
		ch = h_lastbyte[h_iocb];
		if (ch != EOF) {
			if (h_textmode[h_iocb]) {
				switch (ch) {
				case 0x0d:
					h_wascr[h_iocb] = TRUE;
					ch = 0x9b;
					break;
				case 0x0a:
					if (h_wascr[h_iocb]) {
						/* ignore LF next to CR */
						ch = FUNC3(h_fp[h_iocb]);
						if (ch != EOF) {
							if (ch == 0x0d) {
								h_wascr[h_iocb] = TRUE;
								ch = 0x9b;
							}
							else
								h_wascr[h_iocb] = FALSE;
						}
						else {
							CPU_regY = 136; /* end of file */
							CPU_SetN;
							break;
						}
					}
					else
						ch = 0x9b;
					break;
				default:
					h_wascr[h_iocb] = FALSE;
					break;
				}
			}
			CPU_regA = (UBYTE) ch;
			/* [OSMAN] p. 79: Status should be 3 if next read would yield EOF.
			   But to set the stream's EOF flag, we need to read the next byte. */
			h_lastbyte[h_iocb] = FUNC3(h_fp[h_iocb]);
			CPU_regY = FUNC2(h_fp[h_iocb]) ? 3 : 1;
			CPU_ClrN;
		}
		else {
			CPU_regY = 136; /* end of file */
			CPU_SetN;
		}
	}
	else {
		CPU_regY = 136; /* end of file; XXX: this seems to be what Atari DOSes return */
		CPU_SetN;
	}
}