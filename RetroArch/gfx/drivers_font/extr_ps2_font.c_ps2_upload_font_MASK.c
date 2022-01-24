#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {TYPE_1__* Texture; int /*<<< orphan*/  Align; int /*<<< orphan*/  Spacing; scalar_t__ VramIdx; void** Vram; scalar_t__* LastPage; } ;
struct TYPE_4__ {int /*<<< orphan*/  Clut; int /*<<< orphan*/  ClutPSM; void* VramClut; void* Vram; int /*<<< orphan*/  PSM; int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; } ;
typedef  int /*<<< orphan*/  GSGLOBAL ;
typedef  TYPE_2__ GSFONTM ;

/* Variables and functions */
 int /*<<< orphan*/  FONTM_TEXTURE_SPACING ; 
 int FONTM_VRAM_SIZE ; 
 int /*<<< orphan*/  GSKIT_ALLOC_USERBUFFER ; 
 int /*<<< orphan*/  GSKIT_FALIGN_LEFT ; 
 int /*<<< orphan*/  GS_CLUT_PALLETE ; 
 int GS_FONTM_PAGE_COUNT ; 
 int /*<<< orphan*/  GS_VRAM_TBWALIGN ; 
 int /*<<< orphan*/  GS_VRAM_TBWALIGN_CLUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gsKit_fontm_clut ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(GSGLOBAL *gsGlobal, GSFONTM *gsFontM)
{
	int pgindx;
   int TexSize = FUNC2(gsFontM->Texture->Width, gsFontM->Texture->Height, gsFontM->Texture->PSM);

   gsFontM->Texture->VramClut = FUNC3(gsGlobal, FONTM_VRAM_SIZE, GSKIT_ALLOC_USERBUFFER);

   for (pgindx = 0; pgindx < GS_FONTM_PAGE_COUNT; ++pgindx) {
      gsFontM->Vram[pgindx] = FUNC3(gsGlobal, TexSize, GSKIT_ALLOC_USERBUFFER);
      gsFontM->LastPage[pgindx] = (u32) -1;
   }

   gsFontM->Texture->Vram = gsFontM->Vram[0];
   gsFontM->VramIdx = 0;
   gsFontM->Spacing = FONTM_TEXTURE_SPACING;
   gsFontM->Align = GSKIT_FALIGN_LEFT;

	gsFontM->Texture->Clut = FUNC4(GS_VRAM_TBWALIGN_CLUT, GS_VRAM_TBWALIGN);
	FUNC5(gsFontM->Texture->Clut, gsKit_fontm_clut, GS_VRAM_TBWALIGN);
	FUNC1(gsFontM->Texture->Clut, 8,  2, gsFontM->Texture->VramClut, gsFontM->Texture->ClutPSM, 1, GS_CLUT_PALLETE);
	FUNC0(gsFontM->Texture->Clut);
}