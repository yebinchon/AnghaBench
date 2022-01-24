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
typedef  int /*<<< orphan*/  UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_ClrN ; 
 int CPU_regY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Devices_ICBLLZ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ devbug ; 

__attribute__((used)) static void FUNC4(void)
{
	static UBYTE info[16] = {
		0x20,                                                  /* disk version: Sparta >= 2.0 */
		0x00,                                                  /* sector size: 0x100 */
		0xff, 0xff,                                            /* total sectors: 0xffff */
		0xff, 0xff,                                            /* free sectors: 0xffff */
		'H', 'D', 'I', 'S', 'K', '1' /* + devnum */, ' ', ' ', /* disk name */
		1,                                                     /* seq. number (number of writes) */
		1 /* + devnum */                                       /* random number (disk id) */
	};
	int devnum;

	if (devbug)
		FUNC1("Get Disk Information Command");

	devnum = FUNC0(FALSE);
	if (devnum < 0)
		return;

	info[11] = (UBYTE) ('1' + devnum);
	info[15] = (UBYTE) (1 + devnum);
	FUNC2(info, (UWORD) FUNC3(Devices_ICBLLZ), 16);

	CPU_regY = 1;
	CPU_ClrN;
}