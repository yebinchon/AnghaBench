
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y; int x; } ;


 int LINEHEIGHT ;
 int M_DrawThermo (int ,scalar_t__,int,int ) ;
 int PU_CACHE ;
 TYPE_1__ SoundDef ;
 int V_DrawPatchDirect (int,int,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;
 int music_vol ;
 int sfx_vol ;
 int snd_MusicVolume ;
 int snd_SfxVolume ;

void M_DrawSound(void)
{
    V_DrawPatchDirect (60,38,0,W_CacheLumpName("M_SVOL",PU_CACHE));

    M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(sfx_vol+1),
   16,snd_SfxVolume);

    M_DrawThermo(SoundDef.x,SoundDef.y+LINEHEIGHT*(music_vol+1),
   16,snd_MusicVolume);
}
