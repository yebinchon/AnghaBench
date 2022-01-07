
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {TYPE_1__* Texture; int Align; int Spacing; scalar_t__ VramIdx; void** Vram; scalar_t__* LastPage; } ;
struct TYPE_4__ {int Clut; int ClutPSM; void* VramClut; void* Vram; int PSM; int Height; int Width; } ;
typedef int GSGLOBAL ;
typedef TYPE_2__ GSFONTM ;


 int FONTM_TEXTURE_SPACING ;
 int FONTM_VRAM_SIZE ;
 int GSKIT_ALLOC_USERBUFFER ;
 int GSKIT_FALIGN_LEFT ;
 int GS_CLUT_PALLETE ;
 int GS_FONTM_PAGE_COUNT ;
 int GS_VRAM_TBWALIGN ;
 int GS_VRAM_TBWALIGN_CLUT ;
 int free (int ) ;
 int gsKit_fontm_clut ;
 int gsKit_texture_send (int ,int,int,void*,int ,int,int ) ;
 int gsKit_texture_size (int ,int ,int ) ;
 void* gsKit_vram_alloc (int *,int,int ) ;
 int memalign (int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void ps2_upload_font(GSGLOBAL *gsGlobal, GSFONTM *gsFontM)
{
 int pgindx;
   int TexSize = gsKit_texture_size(gsFontM->Texture->Width, gsFontM->Texture->Height, gsFontM->Texture->PSM);

   gsFontM->Texture->VramClut = gsKit_vram_alloc(gsGlobal, FONTM_VRAM_SIZE, GSKIT_ALLOC_USERBUFFER);

   for (pgindx = 0; pgindx < GS_FONTM_PAGE_COUNT; ++pgindx) {
      gsFontM->Vram[pgindx] = gsKit_vram_alloc(gsGlobal, TexSize, GSKIT_ALLOC_USERBUFFER);
      gsFontM->LastPage[pgindx] = (u32) -1;
   }

   gsFontM->Texture->Vram = gsFontM->Vram[0];
   gsFontM->VramIdx = 0;
   gsFontM->Spacing = FONTM_TEXTURE_SPACING;
   gsFontM->Align = GSKIT_FALIGN_LEFT;

 gsFontM->Texture->Clut = memalign(GS_VRAM_TBWALIGN_CLUT, GS_VRAM_TBWALIGN);
 memcpy(gsFontM->Texture->Clut, gsKit_fontm_clut, GS_VRAM_TBWALIGN);
 gsKit_texture_send(gsFontM->Texture->Clut, 8, 2, gsFontM->Texture->VramClut, gsFontM->Texture->ClutPSM, 1, GS_CLUT_PALLETE);
 free(gsFontM->Texture->Clut);
}
