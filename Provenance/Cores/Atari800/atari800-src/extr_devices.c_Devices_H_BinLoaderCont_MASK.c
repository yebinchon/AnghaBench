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
typedef  scalar_t__ UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 scalar_t__ BINLOAD_start_binloading ; 
 int /*<<< orphan*/  CPU_SetC ; 
 int CPU_regPC ; 
 int CPU_regS ; 
 int FUNC0 () ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,void (*) ()) ; 
 int /*<<< orphan*/  ESC_BINLOADER_CONT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/ * binf ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ initBinFile ; 
 scalar_t__ runBinFile ; 

__attribute__((used)) static void FUNC10(void)
{
	if (binf == NULL)
		return;
	if (BINLOAD_start_binloading) {
		FUNC6(0x244, 0);
		FUNC6(0x09, 1);
	}
	else
		CPU_regS += 2;				/* pop ESC code */

	FUNC6(0x2e3, 0xd7);
	do {
		int temp;
		UWORD from;
		UWORD to;
		do
			temp = FUNC0();
		while (temp == 0xffff);
		if (temp < 0)
			return;
		from = (UWORD) temp;

		temp = FUNC0();
		if (temp < 0)
			return;
		to = (UWORD) temp;

		if (devbug)
			FUNC2("H: Load: From %04X to %04X", from, to);

		if (BINLOAD_start_binloading) {
			if (runBinFile)
				FUNC7(0x2e0, from);
			BINLOAD_start_binloading = FALSE;
		}

		to++;
		do {
			int byte = FUNC9(binf);
			if (byte == EOF) {
				FUNC8(binf);
				binf = NULL;
				if (runBinFile)
					CPU_regPC = FUNC5(0x2e0);
				if (initBinFile && (FUNC4(0x2e3) != 0xd7)) {
					/* run INIT routine which RTSes directly to RUN routine */
					CPU_regPC--;
					FUNC6(0x0100 + CPU_regS--, CPU_regPC >> 8);	/* high */
					FUNC6(0x0100 + CPU_regS--, CPU_regPC & 0xff);	/* low */
					CPU_regPC = FUNC5(0x2e2);
				}
				return;
			}
			FUNC3(from, (UBYTE) byte);
			from++;
		} while (from != to);
	} while (!initBinFile || FUNC4(0x2e3) == 0xd7);

	CPU_regS--;
	FUNC1((UWORD) (0x100 + CPU_regS), ESC_BINLOADER_CONT, Devices_H_BinLoaderCont);
	CPU_regS--;
	FUNC6(0x0100 + CPU_regS--, 0x01);	/* high */
	FUNC6(0x0100 + CPU_regS, CPU_regS + 1);	/* low */
	CPU_regS--;
	CPU_regPC = FUNC5(0x2e2);
	CPU_SetC;

	FUNC6(0x0300, 0x31);		/* for "Studio Dream" */
}