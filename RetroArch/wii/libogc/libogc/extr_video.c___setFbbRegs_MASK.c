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
typedef  int u32 ;
struct _horVer {int xof; scalar_t__ threeD; int /*<<< orphan*/  adjustedDispPosY; int /*<<< orphan*/  fbMode; int /*<<< orphan*/  wordPerLine; int /*<<< orphan*/  adjustedPanPosY; int /*<<< orphan*/  panPosX; scalar_t__ rbufAddr; scalar_t__ bufAddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  changed ; 
 int* regs ; 

__attribute__((used)) static inline void FUNC4(struct _horVer *horVer,u32 *tfbb,u32 *bfbb,u32 *rtfbb,u32 *rbfbb)
{
	u32 flag;
	FUNC3((u32)horVer->bufAddr,horVer->panPosX,horVer->adjustedPanPosY,horVer->wordPerLine,horVer->fbMode,horVer->adjustedDispPosY,tfbb,bfbb);
	if(horVer->threeD) FUNC3((u32)horVer->rbufAddr,horVer->panPosX,horVer->adjustedPanPosY,horVer->wordPerLine,horVer->fbMode,horVer->adjustedDispPosY,rtfbb,rbfbb);

	flag = 1;
	if((*tfbb)<0x01000000 && (*bfbb)<0x01000000
		&& (*rtfbb)<0x01000000 && (*rbfbb)<0x01000000) flag = 0;

	if(flag) {
		*tfbb >>= 5;
		*bfbb >>= 5;
		*rtfbb >>= 5;
		*rbfbb >>= 5;
	}

	regs[14] = FUNC1(flag,12,1)|FUNC1(horVer->xof,8,4)|FUNC2(*tfbb,16,8);
	regs[15] = *tfbb&0xffff;
	changed |= FUNC0(14);
	changed |= FUNC0(15);

	regs[18] = FUNC2(*bfbb,16,8);
	regs[19] = *bfbb&0xffff;
	changed |= FUNC0(18);
	changed |= FUNC0(19);

	if(horVer->threeD) {
		regs[16] = FUNC2(*rtfbb,16,8);
		regs[17] = *rtfbb&0xffff;
		changed |= FUNC0(16);
		changed |= FUNC0(17);

		regs[20] = FUNC2(*rbfbb,16,8);
		regs[21] = *rbfbb&0xffff;
		changed |= FUNC0(20);
		changed |= FUNC0(21);
	}
}