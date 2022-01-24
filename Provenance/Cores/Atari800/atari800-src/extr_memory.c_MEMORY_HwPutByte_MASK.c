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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Atari800_MACHINE_5200 ; 
 int /*<<< orphan*/  Atari800_machine_type ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

void FUNC12(UWORD addr, UBYTE byte)
{
	switch (addr & 0xff00) {
	case 0x4f00:
	case 0x8f00:
		FUNC2(addr);
		break;
	case 0x5f00:
	case 0x9f00:
		FUNC3(addr);
		break;
	case 0xd000:				/* GTIA */
	case 0xc000:				/* GTIA - 5200 */
	case 0xc100:				/* GTIA - 5200 */
	case 0xc200:				/* GTIA - 5200 */
	case 0xc300:				/* GTIA - 5200 */
	case 0xc400:				/* GTIA - 5200 */
	case 0xc500:				/* GTIA - 5200 */
	case 0xc600:				/* GTIA - 5200 */
	case 0xc700:				/* GTIA - 5200 */
	case 0xc800:				/* GTIA - 5200 */
	case 0xc900:				/* GTIA - 5200 */
	case 0xca00:				/* GTIA - 5200 */
	case 0xcb00:				/* GTIA - 5200 */
	case 0xcc00:				/* GTIA - 5200 */
	case 0xcd00:				/* GTIA - 5200 */
	case 0xce00:				/* GTIA - 5200 */
		FUNC5(addr, byte);
		break;
	case 0xd200:				/* POKEY */
	case 0xe800:				/* POKEY - 5200 */
	case 0xe900:				/* POKEY - 5200 */
	case 0xea00:				/* POKEY - 5200 */
	case 0xeb00:				/* POKEY - 5200 */
	case 0xec00:				/* POKEY - 5200 */
	case 0xed00:				/* POKEY - 5200 */
	case 0xee00:				/* POKEY - 5200 */
	case 0xef00:				/* POKEY - 5200 */
		FUNC11(addr, byte);
		break;
	case 0xd300:				/* PIA */
		FUNC10(addr, byte);
		break;
	case 0xd400:				/* ANTIC */
		FUNC0(addr, byte);
		break;
	case 0xd500:				/* bank-switching cartridges, RTIME-8 */
		FUNC4(addr, byte);
		break;
	case 0xff00:				/* Mosaic memory expansion for 400/800 */
		FUNC6(addr,byte);
		break;
	case 0xcf00:				/* Axlon memory expansion for 800 */
	case 0x0f00:				/* Axlon shadow */
		if (Atari800_machine_type == Atari800_MACHINE_5200) {
			FUNC5(addr, byte); /* GTIA-5200 cfxx */
		}
		else {
			FUNC1(addr,byte);
		}
		break;
	case 0xd100:				/* PBI page D1 */
		FUNC7(addr, byte);
		break;
	case 0xd600:				/* PBI page D6 */
		FUNC8(addr, byte);
		break;
	case 0xd700:				/* PBI page D7 */
		FUNC9(addr, byte);
		break;
	default:
		break;
	}
}