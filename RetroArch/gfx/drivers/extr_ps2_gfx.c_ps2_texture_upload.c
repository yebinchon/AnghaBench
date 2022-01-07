
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ PSM; int Width; int Height; int TBW; scalar_t__ ClutPSM; int Vram; int Mem; int VramClut; int Clut; } ;
typedef TYPE_1__ GSTEXTURE ;
typedef int GSGLOBAL ;


 int GS_CLUT_NONE ;
 int GS_CLUT_PALLETE ;
 int GS_CLUT_TEXTURE ;
 scalar_t__ GS_PSM_T4 ;
 scalar_t__ GS_PSM_T8 ;
 int gsKit_setup_tbw (TYPE_1__*) ;
 int gsKit_texture_send (int ,int,int,int ,scalar_t__,int,int ) ;

__attribute__((used)) static void ps2_texture_upload(GSGLOBAL *gsGlobal, GSTEXTURE *Texture, bool sendPalette)
{
   gsKit_setup_tbw(Texture);

   if (Texture->PSM == GS_PSM_T8) {
      gsKit_texture_send(Texture->Mem, Texture->Width, Texture->Height, Texture->Vram, Texture->PSM, Texture->TBW, GS_CLUT_TEXTURE);
      if (sendPalette) {
         gsKit_texture_send(Texture->Clut, 16, 16, Texture->VramClut, Texture->ClutPSM, 1, GS_CLUT_PALLETE);
      }

   } else if (Texture->PSM == GS_PSM_T4) {
      gsKit_texture_send(Texture->Mem, Texture->Width, Texture->Height, Texture->Vram, Texture->PSM, Texture->TBW, GS_CLUT_TEXTURE);
      if (sendPalette) {
         gsKit_texture_send(Texture->Clut, 8, 2, Texture->VramClut, Texture->ClutPSM, 1, GS_CLUT_PALLETE);
      }
   } else {
      gsKit_texture_send(Texture->Mem, Texture->Width, Texture->Height, Texture->Vram, Texture->PSM, Texture->TBW, GS_CLUT_NONE);
   }
}
