
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int alpha; } ;
typedef TYPE_1__ store_palette_entry ;
struct TYPE_7__ {int npalette; int is_transparent; int palette; int ps; } ;
typedef TYPE_2__ standard_display ;


 int memcpy (int ,TYPE_1__*,int) ;
 TYPE_1__* store_current_palette (int ,int*) ;

__attribute__((used)) static void
standard_palette_init(standard_display *dp)
{
   store_palette_entry *palette = store_current_palette(dp->ps, &dp->npalette);


   if (dp->npalette > 0)
   {
      int i = dp->npalette;
      memcpy(dp->palette, palette, i * sizeof *palette);


      while (--i >= 0)
         if (palette[i].alpha < 255)
            break;



         if (i >= 0)
            dp->is_transparent = 1;
         else
            dp->is_transparent = 0;



   }
}
