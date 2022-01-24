#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int int32 ;
struct TYPE_13__ {int* CustInst; int* LowFreq; int* HiFreq; int* InstVol; int /*<<< orphan*/ * patch_number; } ;
typedef  TYPE_1__ OPLL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

void FUNC16(OPLL * opll, uint32 reg, uint32 data) {
	int32 i, v, ch;

	data = data & 0xff;
	reg = reg & 0x3f;

	switch (reg) {
	case 0x00:
		opll->CustInst[0] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC4(FUNC1(opll, i));
				FUNC5(FUNC1(opll, i));
				FUNC3(FUNC1(opll, i));
			}
		}
		break;

	case 0x01:
		opll->CustInst[1] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC4(FUNC0(opll, i));
				FUNC5(FUNC0(opll, i));
				FUNC3(FUNC0(opll, i));
			}
		}
		break;

	case 0x02:
		opll->CustInst[2] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC6(FUNC1(opll, i));
			}
		}
		break;

	case 0x03:
		opll->CustInst[3] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC7(FUNC1(opll, i));
				FUNC7(FUNC0(opll, i));
			}
		}
		break;

	case 0x04:
		opll->CustInst[4] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC3(FUNC1(opll, i));
			}
		}
		break;

	case 0x05:
		opll->CustInst[5] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC3(FUNC0(opll, i));
			}
		}
		break;

	case 0x06:
		opll->CustInst[6] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC3(FUNC1(opll, i));
			}
		}
		break;

	case 0x07:
		opll->CustInst[7] = data;
		for (i = 0; i < 6; i++) {
			if (opll->patch_number[i] == 0) {
				FUNC12(opll, i, 0);
				FUNC3(FUNC0(opll, i));
			}
		}
		break;

	case 0x10:
	case 0x11:
	case 0x12:
	case 0x13:
	case 0x14:
	case 0x15:
		ch = reg - 0x10;
		opll->LowFreq[ch] = data;
		FUNC11(opll, ch, data + ((opll->HiFreq[ch] & 1) << 8));
		FUNC2(FUNC1(opll, ch));
		FUNC2(FUNC0(opll, ch));
		break;

	case 0x20:
	case 0x21:
	case 0x22:
	case 0x23:
	case 0x24:
	case 0x25:
		ch = reg - 0x20;
		opll->HiFreq[ch] = data;

		FUNC11(opll, ch, ((data & 1) << 8) + opll->LowFreq[ch]);
		FUNC10(opll, ch, (data >> 1) & 7);
		FUNC13(opll, ch, (data >> 5) & 1);
		if (data & 0x10)
			FUNC9(opll, ch);
		else
			FUNC8(opll, ch);
		FUNC2(FUNC1(opll, ch));
		FUNC2(FUNC0(opll, ch));
		FUNC15(opll);
		break;

	case 0x30:
	case 0x31:
	case 0x32:
	case 0x33:
	case 0x34:
	case 0x35:
		opll->InstVol[reg - 0x30] = data;
		i = (data >> 4) & 15;
		v = data & 15;
		FUNC12(opll, reg - 0x30, i);
		FUNC14(opll, reg - 0x30, v << 2);
		FUNC2(FUNC1(opll, reg - 0x30));
		FUNC2(FUNC0(opll, reg - 0x30));
		break;

	default:
		break;
	}
}