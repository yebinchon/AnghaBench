
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int damagecount; int* powers; int bonuscount; } ;


 int I_SetPalette (int *) ;
 int NUMBONUSPALS ;
 int NUMREDPALS ;
 int PU_CACHE ;
 int RADIATIONPAL ;
 scalar_t__ STARTBONUSPALS ;
 scalar_t__ STARTREDPALS ;
 scalar_t__ W_CacheLumpNum (int ,int ) ;
 int lu_palette ;
 TYPE_1__* plyr ;
 size_t pw_ironfeet ;
 size_t pw_strength ;
 int st_palette ;

void ST_doPaletteStuff(void)
{

    int palette;
    byte* pal;
    int cnt;
    int bzc;

    cnt = plyr->damagecount;

    if (plyr->powers[pw_strength])
    {

   bzc = 12 - (plyr->powers[pw_strength]>>6);

 if (bzc > cnt)
     cnt = bzc;
    }

    if (cnt)
    {
 palette = (cnt+7)>>3;

 if (palette >= NUMREDPALS)
     palette = NUMREDPALS-1;

 palette += STARTREDPALS;
    }

    else if (plyr->bonuscount)
    {
 palette = (plyr->bonuscount+7)>>3;

 if (palette >= NUMBONUSPALS)
     palette = NUMBONUSPALS-1;

 palette += STARTBONUSPALS;
    }

    else if ( plyr->powers[pw_ironfeet] > 4*32
       || plyr->powers[pw_ironfeet]&8)
 palette = RADIATIONPAL;
    else
 palette = 0;

    if (palette != st_palette)
    {
 st_palette = palette;
 pal = (byte *) W_CacheLumpNum (lu_palette, PU_CACHE)+palette*768;
 I_SetPalette (pal);
    }

}
