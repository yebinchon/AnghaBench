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
 int CPU_regY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ Devices_ICAX3 ; 
 scalar_t__ Devices_ICAX4 ; 
 scalar_t__ Devices_ICAX5 ; 
 size_t Devices_IOCB0 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ devbug ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** h_fp ; 
 size_t h_iocb ; 
 char* h_lastop ; 

__attribute__((used)) static void FUNC4(void)
{
	if (devbug)
		FUNC1("POINT Command");
	if (!FUNC0())
		return;
	if (h_fp[h_iocb] != NULL) {
		int iocb = Devices_IOCB0 + h_iocb * 16;
		long pos = (FUNC2(iocb + Devices_ICAX4) << 16) +
			(FUNC2(iocb + Devices_ICAX3) << 8) + (FUNC2(iocb + Devices_ICAX5));
		if (FUNC3(h_fp[h_iocb], pos, SEEK_SET) == 0) {
			CPU_regY = 1;
			CPU_ClrN;
		}
		else {
			CPU_regY = 166; /* invalid POINT request */
			CPU_SetN;
		}
		h_lastop[h_iocb] = 'p';
	}
	else {
		CPU_regY = 130; /* specified device does not exist; XXX: correct? */
		CPU_SetN;
	}
}