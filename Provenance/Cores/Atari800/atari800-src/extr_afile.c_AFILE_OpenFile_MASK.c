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
#define  AFILE_ATR 146 
#define  AFILE_ATR_GZ 145 
#define  AFILE_ATX 144 
#define  AFILE_BAS 143 
#define  AFILE_BOOT_TAPE 142 
#define  AFILE_CART 141 
#define  AFILE_CAS 140 
#define  AFILE_DCM 139 
 int FUNC0 (char const*) ; 
 int AFILE_ERROR ; 
#define  AFILE_LST 138 
#define  AFILE_PRO 137 
#define  AFILE_ROM 136 
#define  AFILE_STATE 135 
#define  AFILE_STATE_GZ 134 
#define  AFILE_XEX 133 
#define  AFILE_XFD 132 
#define  AFILE_XFD_GZ 131 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
#define  CARTRIDGE_BAD_CHECKSUM 130 
#define  CARTRIDGE_BAD_FORMAT 129 
#define  CARTRIDGE_CANT_OPEN 128 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CARTRIDGE_main ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  CASSETTE_hold_start ; 
 int /*<<< orphan*/  GTIA_consol_override ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(const char *filename, int reboot, int diskno, int readonly)
{
	int type = FUNC0(filename);
	switch (type) {
	case AFILE_ATR:
	case AFILE_ATX:
	case AFILE_XFD:
	case AFILE_ATR_GZ:
	case AFILE_XFD_GZ:
	case AFILE_DCM:
	case AFILE_PRO:
		if (!FUNC8(diskno, filename, readonly))
			return AFILE_ERROR;
		if (reboot)
			FUNC1();
		break;
	case AFILE_XEX:
	case AFILE_BAS:
	case AFILE_LST:
		if (!FUNC2(filename))
			return AFILE_ERROR;
		break;
	case AFILE_CART:
	case AFILE_ROM:
		{
			int r;
			if (reboot)
				r = FUNC4(filename);
			else
				r = FUNC3(filename);
			switch (r) {
			case CARTRIDGE_CANT_OPEN:
			case CARTRIDGE_BAD_FORMAT:
				return AFILE_ERROR;
			case CARTRIDGE_BAD_CHECKSUM:
			case 0:
				/* ok */
				break;
			default:
#ifdef BASIC
				Log_print("Raw cartridge images are not supported in BASIC version.");
				return AFILE_ERROR;
#else /* BASIC */
				/* r > 0 */
#ifndef ANDROID
				FUNC5(&CARTRIDGE_main, FUNC10(r));
#else
				return (r << 8) | AFILE_ROM;
#endif /* ANDROID */
				break;
#endif /* BASIC */
			}
		}
		break;
	case AFILE_CAS:
	case AFILE_BOOT_TAPE:
		if (!FUNC6(filename))
			return AFILE_ERROR;
		if (reboot) {
			CASSETTE_hold_start = TRUE;
			FUNC1();
		}
		break;
	case AFILE_STATE:
	case AFILE_STATE_GZ:
#ifdef BASIC
		Log_print("State files are not supported in BASIC version");
		return AFILE_ERROR;
#else
		if (!FUNC9(filename, "rb"))
			return AFILE_ERROR;
		/* Don't press Start nor Option */
		GTIA_consol_override = 0;
		break;
#endif
	default:
		break;
	}
	return type;
}