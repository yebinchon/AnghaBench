
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Filter; int ClutPSM; int PSM; int Height; int Width; } ;
struct TYPE_5__ {TYPE_3__* Texture; } ;
typedef int GSGLOBAL ;
typedef TYPE_1__ GSFONTM ;


 int FONTM_TEXTURE_HEIGHT ;
 int FONTM_TEXTURE_WIDTH ;
 int GS_FILTER_LINEAR ;
 int GS_PSM_CT32 ;
 int GS_PSM_T4 ;
 scalar_t__ gsKit_fontm_unpack (TYPE_1__*) ;
 int gsKit_setup_tbw (TYPE_3__*) ;

__attribute__((used)) static void ps2_prepare_font(GSGLOBAL *gsGlobal, GSFONTM *gsFontM)
{
   if(gsKit_fontm_unpack(gsFontM) == 0) {
      gsFontM->Texture->Width = FONTM_TEXTURE_WIDTH;
      gsFontM->Texture->Height = FONTM_TEXTURE_HEIGHT;
      gsFontM->Texture->PSM = GS_PSM_T4;
      gsFontM->Texture->ClutPSM = GS_PSM_CT32;
      gsFontM->Texture->Filter = GS_FILTER_LINEAR;
      gsKit_setup_tbw(gsFontM->Texture);
   }
}
