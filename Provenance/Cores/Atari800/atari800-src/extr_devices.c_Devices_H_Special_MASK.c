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
 int /*<<< orphan*/  CPU_SetN ; 
 int CPU_regY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  Devices_ICCOMZ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ devbug ; 

__attribute__((used)) static void FUNC15(void)
{
	if (devbug)
		FUNC13("HHSPEC");

	switch (FUNC14(Devices_ICCOMZ)) {
#ifdef DO_RENAME
	case 0x20:
		Devices_H_Rename();
		return;
#endif
#ifdef HAVE_UTIL_UNLINK
	case 0x21:
		Devices_H_Delete();
		return;
#endif
#ifdef DO_LOCK
	case 0x23:
		Devices_H_Lock();
		return;
	case 0x24:
		Devices_H_Unlock();
		return;
#endif
	case 0x26:
		FUNC7();
		return;
	case 0x25:
		FUNC8();
		return;
	case 0x27: /* Sparta, MyDOS=Load */
		FUNC3();
		return;
	case 0x28: /* Sparta */
		FUNC4(FALSE);
		return;
#ifdef DO_MKDIR
	case 0x22: /* MyDOS */
	case 0x2a: /* MyDOS, Sparta */
		Devices_H_MakeDirectory();
		return;
#endif
#ifdef DO_RMDIR
	case 0x2b: /* Sparta */
		Devices_H_RemoveDirectory();
		return;
#endif
	case 0x29: /* MyDOS */
	case 0x2c: /* Sparta */
		FUNC0();
		return;
	case 0x2f: /* Sparta */
		FUNC2();
		return;
	case 0x30: /* Sparta */
		FUNC11();
		return;
	case 0xfe:
		if (devbug)
			FUNC13("FORMAT Command");
		break;
	default:
		if (devbug)
			FUNC13("UNKNOWN Command %02X", FUNC14(Devices_ICCOMZ));
		break;
	}

	CPU_regY = 168; /* invalid device command */
	CPU_SetN;
}