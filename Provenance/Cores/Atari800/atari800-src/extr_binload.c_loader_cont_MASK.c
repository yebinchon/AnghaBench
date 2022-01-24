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
 int /*<<< orphan*/ * BINLOAD_bin_file ; 
 scalar_t__ BINLOAD_start_binloading ; 
 int /*<<< orphan*/  CPU_SetC ; 
 int CPU_regPC ; 
 int CPU_regS ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,void (*) ()) ; 
 int /*<<< orphan*/  ESC_BINLOADER_CONT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
	if (BINLOAD_bin_file == NULL)
		return;
	if (BINLOAD_start_binloading) {
		FUNC4(0x244, 0);
		FUNC4(0x09, 1);
	}
	else
		CPU_regS += 2;	/* pop ESC code */

	FUNC4(0x2e3, 0xd7);
	do {
		int temp;
		UWORD from;
		UWORD to;
		do
			temp = FUNC8();
		while (temp == 0xffff);
		if (temp < 0)
			return;
		from = (UWORD) temp;

		temp = FUNC8();
		if (temp < 0)
			return;
		to = (UWORD) temp;

		if (BINLOAD_start_binloading) {
			FUNC5(0x2e0, from);
			BINLOAD_start_binloading = FALSE;
		}

		to++;
		do {
			int byte = FUNC7(BINLOAD_bin_file);
			if (byte == EOF) {
				FUNC6(BINLOAD_bin_file);
				BINLOAD_bin_file = NULL;
				CPU_regPC = FUNC3(0x2e0);
				if (FUNC2(0x2e3) != 0xd7) {
					/* run INIT routine which RTSes directly to RUN routine */
					CPU_regPC--;
					FUNC4(0x0100 + CPU_regS--, CPU_regPC >> 8);		/* high */
					FUNC4(0x0100 + CPU_regS--, CPU_regPC & 0xff);	/* low */
					CPU_regPC = FUNC3(0x2e2);
				}
				return;
			}
			FUNC1(from, (UBYTE) byte);
			from++;
		} while (from != to);
	} while (FUNC2(0x2e3) == 0xd7);

	CPU_regS--;
	FUNC0((UWORD) (0x100 + CPU_regS), ESC_BINLOADER_CONT, loader_cont);
	CPU_regS--;
	FUNC4(0x0100 + CPU_regS--, 0x01);	/* high */
	FUNC4(0x0100 + CPU_regS, CPU_regS + 1);	/* low */
	CPU_regS--;
	CPU_regPC = FUNC3(0x2e2);
	CPU_SetC;

	FUNC4(0x0300, 0x31);	/* for "Studio Dream" */
}