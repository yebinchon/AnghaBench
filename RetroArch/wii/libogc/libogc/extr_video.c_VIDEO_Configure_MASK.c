#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct _timing {int /*<<< orphan*/  psbEven; int /*<<< orphan*/  psbOdd; int /*<<< orphan*/  prbEven; int /*<<< orphan*/  prbOdd; int /*<<< orphan*/  acv; int /*<<< orphan*/  equ; } ;
struct TYPE_6__ {int nonInter; int tv; int dispPosY; int fbSizeY; scalar_t__ fbMode; int panSizeY; int dispSizeY; int threeD; int /*<<< orphan*/  black; int /*<<< orphan*/  adjustedDispSizeY; int /*<<< orphan*/  adjustedDispPosY; int /*<<< orphan*/  rbfbb; int /*<<< orphan*/  rtfbb; int /*<<< orphan*/  bfbb; int /*<<< orphan*/  tfbb; int /*<<< orphan*/  xof; int /*<<< orphan*/  wpl; int /*<<< orphan*/  std; int /*<<< orphan*/  wordPerLine; int /*<<< orphan*/  panSizeX; scalar_t__ panPosX; int /*<<< orphan*/  fbSizeX; int /*<<< orphan*/  dispSizeX; int /*<<< orphan*/  adjustedDispPosX; struct _timing const* timing; scalar_t__ panPosY; int /*<<< orphan*/  dispPosX; } ;
struct TYPE_5__ {int viTVMode; int viYOrigin; int xfbHeight; scalar_t__ xfbMode; int /*<<< orphan*/  fbWidth; int /*<<< orphan*/  viWidth; int /*<<< orphan*/  viXOrigin; } ;
typedef  TYPE_1__ GXRModeObj ;

/* Variables and functions */
 TYPE_2__ HorVer ; 
 int VI_EURGB60 ; 
 int VI_NON_INTERLACE ; 
 int VI_PROGRESSIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ VI_XFBMODE_SF ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int,int) ; 
 int FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct _timing* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct _timing const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct _timing const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct _timing const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int changeMode ; 
 int /*<<< orphan*/  changed ; 
 scalar_t__ fbSet ; 
 int* regs ; 

void FUNC15(GXRModeObj *rmode)
{
	u16 dcr;
	u32 nonint,vimode,level;
	const struct _timing *curtiming;
	FUNC2(level);
	nonint = (rmode->viTVMode&0x0003);
	if(nonint!=HorVer.nonInter) {
		changeMode = 1;
		HorVer.nonInter = nonint;
	}
	HorVer.tv = FUNC5(rmode->viTVMode,2,3);
	HorVer.dispPosX = rmode->viXOrigin;
	HorVer.dispPosY = rmode->viYOrigin;
	if(HorVer.nonInter==VI_NON_INTERLACE) HorVer.dispPosY = HorVer.dispPosY<<1;

	HorVer.dispSizeX = rmode->viWidth;
	HorVer.fbSizeX = rmode->fbWidth;
	HorVer.fbSizeY = rmode->xfbHeight;
	HorVer.fbMode = rmode->xfbMode;
	HorVer.panSizeX = HorVer.fbSizeX;
	HorVer.panSizeY = HorVer.fbSizeY;
	HorVer.panPosX = 0;
	HorVer.panPosY = 0;

	if(HorVer.nonInter==VI_PROGRESSIVE || HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) HorVer.dispSizeY = HorVer.panSizeY;
	else if(HorVer.fbMode==VI_XFBMODE_SF) HorVer.dispSizeY = HorVer.panSizeY<<1;
	else HorVer.dispSizeY = HorVer.panSizeY;

	if(HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) HorVer.threeD = 1;
	else HorVer.threeD = 0;

	vimode = FUNC1(HorVer.tv,HorVer.nonInter);
	curtiming = FUNC7(vimode);
	HorVer.timing = curtiming;

	FUNC6(curtiming->acv);
	FUNC11(curtiming);

	dcr = regs[1]&~0x030c;
	dcr |= FUNC4(HorVer.threeD,3,1);
	if(HorVer.nonInter==VI_PROGRESSIVE || HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) dcr |= 0x0004;
	else dcr |= FUNC4(HorVer.nonInter,2,1);
	if(!(HorVer.tv==VI_EURGB60)) dcr |= FUNC4(HorVer.tv,8,2);
	regs[1] = dcr;
	changed |= FUNC0(1);

	regs[54] &= ~0x0001;
	if(HorVer.nonInter==VI_PROGRESSIVE || HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) regs[54] |= 0x0001;
	changed |= FUNC0(54);

	FUNC13(HorVer.panSizeX,HorVer.dispSizeX,HorVer.threeD);
	FUNC10(curtiming,HorVer.adjustedDispPosX,HorVer.dispSizeX);
	FUNC8(curtiming);
	FUNC12(HorVer.fbSizeX,HorVer.fbMode,HorVer.panPosX,HorVer.panSizeX,&HorVer.wordPerLine,&HorVer.std,&HorVer.wpl,&HorVer.xof);

	if(fbSet) FUNC9(&HorVer,&HorVer.tfbb,&HorVer.bfbb,&HorVer.rtfbb,&HorVer.rbfbb);

	FUNC14(HorVer.adjustedDispPosY,HorVer.adjustedDispSizeY,curtiming->equ,curtiming->acv,curtiming->prbOdd,curtiming->prbEven,curtiming->psbOdd,curtiming->psbEven,HorVer.black);
	FUNC3(level);
}