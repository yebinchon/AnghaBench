#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int state; } ;

/* Variables and functions */
#define  CARTRIDGE_AST_32 180 
#define  CARTRIDGE_ATMAX_1024 179 
#define  CARTRIDGE_ATMAX_128 178 
#define  CARTRIDGE_ATRAX_128 177 
#define  CARTRIDGE_ATRAX_SDX_128 176 
#define  CARTRIDGE_ATRAX_SDX_64 175 
#define  CARTRIDGE_BLIZZARD_16 174 
#define  CARTRIDGE_BLIZZARD_32 173 
#define  CARTRIDGE_BLIZZARD_4 172 
#define  CARTRIDGE_DB_32 171 
#define  CARTRIDGE_DIAMOND_64 170 
#define  CARTRIDGE_EXP_64 169 
#define  CARTRIDGE_MEGAMAX_2048 168 
#define  CARTRIDGE_MEGA_1024 167 
#define  CARTRIDGE_MEGA_128 166 
#define  CARTRIDGE_MEGA_16 165 
#define  CARTRIDGE_MEGA_2048 164 
#define  CARTRIDGE_MEGA_256 163 
#define  CARTRIDGE_MEGA_32 162 
#define  CARTRIDGE_MEGA_4096 161 
#define  CARTRIDGE_MEGA_512 160 
#define  CARTRIDGE_MEGA_64 159 
#define  CARTRIDGE_OSS_034M_16 158 
#define  CARTRIDGE_OSS_043M_16 157 
#define  CARTRIDGE_OSS_8 156 
#define  CARTRIDGE_OSS_M091_16 155 
#define  CARTRIDGE_PHOENIX_8 154 
#define  CARTRIDGE_SDX_128 153 
#define  CARTRIDGE_SDX_64 152 
#define  CARTRIDGE_SIC_128 151 
#define  CARTRIDGE_SIC_256 150 
#define  CARTRIDGE_SIC_512 149 
#define  CARTRIDGE_SWXEGS_1024 148 
#define  CARTRIDGE_SWXEGS_128 147 
#define  CARTRIDGE_SWXEGS_256 146 
#define  CARTRIDGE_SWXEGS_32 145 
#define  CARTRIDGE_SWXEGS_512 144 
#define  CARTRIDGE_SWXEGS_64 143 
#define  CARTRIDGE_THECART_128M 142 
#define  CARTRIDGE_THECART_32M 141 
#define  CARTRIDGE_THECART_64M 140 
#define  CARTRIDGE_TURBOSOFT_128 139 
#define  CARTRIDGE_TURBOSOFT_64 138 
#define  CARTRIDGE_ULTRACART_32 137 
#define  CARTRIDGE_WILL_32 136 
#define  CARTRIDGE_WILL_64 135 
#define  CARTRIDGE_XEGS_07_64 134 
#define  CARTRIDGE_XEGS_1024 133 
#define  CARTRIDGE_XEGS_128 132 
#define  CARTRIDGE_XEGS_256 131 
#define  CARTRIDGE_XEGS_32 130 
#define  CARTRIDGE_XEGS_512 129 
#define  CARTRIDGE_XEGS_8F_64 128 
 TYPE_1__ CARTRIDGE_piggyback ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* active_cart ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(int old_state)
{
	/* All bank-switched cartridges besides two BBSB's are included in
	   this swithch. The BBSB cartridges are not bank-switched by
	   access to page $D5, but in CARTRIDGE_BountyBob1() and
	   CARTRIDGE_BountyBob2(), so they need not be processed here. */
	switch (active_cart->type) {
	case CARTRIDGE_OSS_034M_16:
	case CARTRIDGE_OSS_043M_16:
		FUNC5(0x3000, old_state);
		break;
	case CARTRIDGE_OSS_M091_16:
	case CARTRIDGE_OSS_8:
		FUNC5(0x0000, old_state);
		break;
	case CARTRIDGE_WILL_64:
	case CARTRIDGE_EXP_64:
	case CARTRIDGE_DIAMOND_64:
	case CARTRIDGE_SDX_64:
	case CARTRIDGE_WILL_32:
	case CARTRIDGE_ATRAX_SDX_64:
		FUNC6(8, 7);
		break;
	case CARTRIDGE_DB_32:
	case CARTRIDGE_XEGS_32:
	case CARTRIDGE_SWXEGS_32:
		FUNC3(0x6000, old_state);
		break;
	case CARTRIDGE_XEGS_07_64:
	case CARTRIDGE_SWXEGS_64:
		FUNC3(0xe000, old_state);
		break;
	case CARTRIDGE_XEGS_8F_64:
		FUNC10();
		break;
	case CARTRIDGE_XEGS_128:
	case CARTRIDGE_SWXEGS_128:
		FUNC3(0x1e000, old_state);
		break;
	case CARTRIDGE_XEGS_256:
	case CARTRIDGE_SWXEGS_256:
		FUNC3(0x3e000, old_state);
		break;
	case CARTRIDGE_XEGS_512:
	case CARTRIDGE_SWXEGS_512:
		FUNC3(0x7e000, old_state);
		break;
	case CARTRIDGE_XEGS_1024:
	case CARTRIDGE_SWXEGS_1024:
		FUNC3(0xfe000, old_state);
		break;
	case CARTRIDGE_ATRAX_128:
	case CARTRIDGE_ATMAX_1024:
		FUNC6(0x80, 0x7f);
		break;
	case CARTRIDGE_ATMAX_128:
	case CARTRIDGE_TURBOSOFT_64:
	case CARTRIDGE_TURBOSOFT_128:
		FUNC6(0x10, 0x0f);
		break;
	case CARTRIDGE_MEGA_16:
	case CARTRIDGE_MEGA_32:
	case CARTRIDGE_MEGA_64:
	case CARTRIDGE_MEGA_128:
	case CARTRIDGE_MEGA_256:
	case CARTRIDGE_MEGA_512:
	case CARTRIDGE_MEGA_1024:
	case CARTRIDGE_MEGA_2048:
	case CARTRIDGE_MEGAMAX_2048:
		FUNC4();
		break;
	case CARTRIDGE_PHOENIX_8:
	case CARTRIDGE_BLIZZARD_4:
		if (active_cart->state)
			FUNC2();
		break;
	case CARTRIDGE_BLIZZARD_16:
		if (active_cart->state) {
			FUNC1();
			FUNC2();
		}
		break;
	case CARTRIDGE_SDX_128:
	case CARTRIDGE_ATRAX_SDX_128:
		FUNC8();
		break;
	case CARTRIDGE_AST_32:
		/* Value 0x10000 indicates cartridge enabled. */
		if (active_cart->state < 0x10000)
			FUNC2();
		break;
	case CARTRIDGE_ULTRACART_32:
	case CARTRIDGE_BLIZZARD_32:
		FUNC6(4, 3);
		break;
	case CARTRIDGE_SIC_128:
		FUNC9(0x07);
		break;
	case CARTRIDGE_SIC_256:
		FUNC9(0x0f);
		break;
	case CARTRIDGE_SIC_512:
		FUNC9(0x1f);
		break;
	case CARTRIDGE_MEGA_4096:
		FUNC7();
		break;
	case CARTRIDGE_THECART_128M:
		FUNC6(0x4000, 0x3fff);
		break;
	case CARTRIDGE_THECART_32M:
		FUNC6(0x4000, 0x0fff);
		break;
	case CARTRIDGE_THECART_64M:
		FUNC6(0x4000, 0x1fff);
		break;
	}
#if DEBUG
	if (old_state != active_cart->state)
		Log_print("Cart %i state: %02x -> %02x", active_cart == &CARTRIDGE_piggyback, old_state, active_cart->state);
#endif
}