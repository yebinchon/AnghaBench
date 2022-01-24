#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* PrimAlphaEnable; void* ZBuffering; void* DoubleBuffering; int /*<<< orphan*/  PSMZ; int /*<<< orphan*/  PSM; int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; int /*<<< orphan*/  Field; int /*<<< orphan*/  Interlace; int /*<<< orphan*/  Mode; } ;
typedef  TYPE_1__ GSGLOBAL ;

/* Variables and functions */
 int DMA_CHANNEL_GIF ; 
 int /*<<< orphan*/  D_CTRL_MFD_OFF ; 
 int /*<<< orphan*/  D_CTRL_RCYC_8 ; 
 int /*<<< orphan*/  D_CTRL_RELE_OFF ; 
 int /*<<< orphan*/  D_CTRL_STD_OFF ; 
 int /*<<< orphan*/  D_CTRL_STS_UNSPEC ; 
 int /*<<< orphan*/  GS_BLACK ; 
 int /*<<< orphan*/  GS_FIELD ; 
 int /*<<< orphan*/  GS_INTERLACED ; 
 int /*<<< orphan*/  GS_MODE_NTSC ; 
 int /*<<< orphan*/  GS_ONESHOT ; 
 int /*<<< orphan*/  GS_PSMZ_16 ; 
 int /*<<< orphan*/  GS_PSM_CT16 ; 
 void* GS_SETTING_OFF ; 
 int /*<<< orphan*/  NTSC_HEIGHT ; 
 int /*<<< orphan*/  NTSC_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GSGLOBAL *FUNC6(void)
{
   GSGLOBAL *gsGlobal = FUNC3();

   gsGlobal->Mode = GS_MODE_NTSC;
   gsGlobal->Interlace = GS_INTERLACED;
   gsGlobal->Field = GS_FIELD;
   gsGlobal->Width = NTSC_WIDTH;
   gsGlobal->Height = NTSC_HEIGHT;

   gsGlobal->PSM = GS_PSM_CT16;
   gsGlobal->PSMZ = GS_PSMZ_16;
   gsGlobal->DoubleBuffering = GS_SETTING_OFF;
   gsGlobal->ZBuffering = GS_SETTING_OFF;
   gsGlobal->PrimAlphaEnable = GS_SETTING_OFF;

   FUNC1(D_CTRL_RELE_OFF,D_CTRL_MFD_OFF, D_CTRL_STS_UNSPEC,
               D_CTRL_STD_OFF, D_CTRL_RCYC_8, 1 << DMA_CHANNEL_GIF);

   /* Initialize the DMAC */
   FUNC0(DMA_CHANNEL_GIF);

   FUNC4(gsGlobal);
   FUNC5(gsGlobal, GS_ONESHOT);
   FUNC2(gsGlobal, GS_BLACK);

   return gsGlobal;
}