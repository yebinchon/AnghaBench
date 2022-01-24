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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  UBYTE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_ClrN ; 
 int CPU_regY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ Devices_ICAX3 ; 
 scalar_t__ Devices_ICAX4 ; 
 scalar_t__ Devices_ICAX5 ; 
 size_t Devices_IOCB0 ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * binf ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct stat*) ; 
 long FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** h_fp ; 
 size_t h_iocb ; 
 scalar_t__* h_lastbyte ; 
 char* h_lastop ; 

__attribute__((used)) static void FUNC11(void)
{
	if (devbug)
		FUNC3("Get File Length Command");
	if (!FUNC0())
		return;
	/* if IOCB is closed then assume it is a MyDOS Load File command */
	if (h_fp[h_iocb] == NULL)
		FUNC1(TRUE);
	/* if we are running MyDOS then assume it is a MyDOS Load File command */
	else if (FUNC4(0x700) == 'M') {
		/* XXX: if (binf != NULL) fclose(binf); ? */

		/* In Devices_H_Read one byte is read ahead. Take it into account. */
		if (h_lastop[h_iocb] == 'r' && h_lastbyte[h_iocb] != EOF)
			FUNC8(h_fp[h_iocb], -1, SEEK_CUR);

		binf = h_fp[h_iocb];
		FUNC2(TRUE);
		/* XXX: don't close binf when complete? */
		h_lastop[h_iocb] = 'b';
	}
	/* otherwise assume it is a file length command */
	else {
		int iocb = Devices_IOCB0 + h_iocb * 16;
		int filesize;
#if 0
		/* old, less portable implementation */
		struct stat fstatus;
		fstat(fileno(h_fp[h_iocb]), &fstatus);
		filesize = fstatus.st_size;
#else
		FILE *fp = h_fp[h_iocb];
		long currentpos = FUNC10(fp);
		filesize = FUNC6(fp);
		FUNC8(fp, currentpos, SEEK_SET);
#endif
		FUNC5(iocb + Devices_ICAX3, (UBYTE) filesize);
		FUNC5(iocb + Devices_ICAX4, (UBYTE) (filesize >> 8));
		FUNC5(iocb + Devices_ICAX5, (UBYTE) (filesize >> 16));
		CPU_regY = 1;
		CPU_ClrN;
	}
}