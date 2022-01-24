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
typedef  int UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 int Atari800_os_version ; 
 int /*<<< orphan*/  CASSETTE_LeaderLoad ; 
 int /*<<< orphan*/  CASSETTE_LeaderSave ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESC_COPENLOAD ; 
 int /*<<< orphan*/  ESC_COPENSAVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESC_SIOV ; 
 scalar_t__ ESC_enable_sio_patch ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  SIO_Handler ; 
#define  SYSROM_800_CUSTOM 143 
#define  SYSROM_AA00R10 142 
#define  SYSROM_AA01R11 141 
#define  SYSROM_A_NTSC 140 
#define  SYSROM_A_PAL 139 
#define  SYSROM_BB00R1 138 
#define  SYSROM_BB01R2 137 
#define  SYSROM_BB01R3 136 
#define  SYSROM_BB01R4_OS 135 
#define  SYSROM_BB01R59 134 
#define  SYSROM_BB01R59A 133 
#define  SYSROM_BB02R3 132 
#define  SYSROM_BB02R3V4 131 
#define  SYSROM_B_NTSC 130 
#define  SYSROM_CC01R4 129 
#define  SYSROM_XL_CUSTOM 128 
 int TRUE ; 

void FUNC6(void)
{
	int patched = FUNC0();
	if (ESC_enable_sio_patch) {
		UWORD addr_l;
		UWORD addr_s;
		UBYTE check_s_0;
		UBYTE check_s_1;
		/* patch Open() of C: so we know when a leader is processed */
		switch (Atari800_os_version) {
		case SYSROM_A_NTSC:
		case SYSROM_B_NTSC:
		case SYSROM_800_CUSTOM:
			addr_l = 0xef74;
			addr_s = 0xefbc;
			check_s_0 = 0xa0;
			check_s_1 = 0x80;
			break;
		case SYSROM_A_PAL:
			addr_l = 0xef74;
			addr_s = 0xefbc;
			check_s_0 = 0xa0;
			check_s_1 = 0xc0;
			break;
		case SYSROM_AA00R10:
			addr_l = 0xed47;
			addr_s = 0xed94;
			check_s_0 = 0xa9;
			check_s_1 = 0x03;
			break;
		case SYSROM_AA01R11:
		case SYSROM_BB00R1:
		case SYSROM_BB01R2:
		case SYSROM_BB02R3:
		case SYSROM_BB02R3V4:
		case SYSROM_BB01R3:
		case SYSROM_BB01R4_OS:
		case SYSROM_BB01R59:
		case SYSROM_BB01R59A:
		case SYSROM_XL_CUSTOM:
			addr_l = 0xfd13;
			addr_s = 0xfd60;
			check_s_0 = 0xa9;
			check_s_1 = 0x03;
			break;
		case SYSROM_CC01R4:
			addr_l = 0xef74;
			addr_s = 0xefbc;
			check_s_0 = 0xa9;
			check_s_1 = 0x03;
			break;
		default:
			return;
		}
		/* don't hurt non-standard OSes that may not support cassette at all  */
		if (FUNC4(addr_l)     == 0xa9 && FUNC4(addr_l + 1) == 0x03
		 && FUNC4(addr_l + 2) == 0x8d && FUNC4(addr_l + 3) == 0x2a
		 && FUNC4(addr_l + 4) == 0x02
		 && FUNC4(addr_s)     == check_s_0
		 && FUNC4(addr_s + 1) == check_s_1
		 && FUNC4(addr_s + 2) == 0x20 && FUNC4(addr_s + 3) == 0x5c
		 && FUNC4(addr_s + 4) == 0xe4) {
			FUNC1(addr_l, ESC_COPENLOAD, CASSETTE_LeaderLoad);
			FUNC1(addr_s, ESC_COPENSAVE, CASSETTE_LeaderSave);
		}
		FUNC2(0xe459, ESC_SIOV, SIO_Handler);
		patched = TRUE;
	}
	else {
		FUNC3(ESC_COPENLOAD);
		FUNC3(ESC_COPENSAVE);
		FUNC3(ESC_SIOV);
	};
	if (patched){
		UWORD addr;
		switch (Atari800_os_version) {
		case SYSROM_AA00R10:
			addr = 0xc3d2;
			break;
		case SYSROM_AA01R11:
			addr = 0xc346;
			break;
		case SYSROM_BB00R1:
			addr = 0xc32b;
			break;
		case SYSROM_BB01R2:
		case SYSROM_BB02R3:
		case SYSROM_BB01R3:
		case SYSROM_BB01R4_OS:
		case SYSROM_BB01R59:
		case SYSROM_BB01R59A:
		case SYSROM_XL_CUSTOM:
			addr = 0xc31d;
			break;
		case SYSROM_BB02R3V4:
			addr = 0xc32c;
			break;
		case SYSROM_CC01R4:
			addr = 0xc2e0;
			break;
		default:
			/* Don't disable checksum test. */
			return;
		}
		/* Disable setting NGFLAG on wrong OS checksum. */
		FUNC5(addr, 0xea);
		FUNC5(addr+1, 0xea);
	}
}