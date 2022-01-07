
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int ULONG ;
typedef int UBYTE ;


 int* ANTIC_cl ;
 int * ANTIC_lookup_gtia9 ;
 int COLOUR (int) ;
 size_t C_PF3 ;
 int GTIA_COLPF3 ;
 int const* GTIA_pm_scanline ;
 int L_PF3 ;
 int WRITE_VIDEO (int *,int) ;
 int WRITE_VIDEO_LONG (int *,int ) ;
 int* an_scanline ;
 int* colour_translation_table ;
 int do_border () ;
 int* pm_lookup_ptr ;
 int right_border_start ;
 int * scrn_ptr ;

__attribute__((used)) static void draw_an_gtia9(const ULONG *t_pm_scanline_ptr)
{
 int i = ((const UBYTE *) t_pm_scanline_ptr - GTIA_pm_scanline) & ~1;
 while (i < right_border_start) {
  UWORD *ptr = scrn_ptr + i;
  int pixel = (an_scanline[i] << 2) + an_scanline[i + 1];
  UBYTE pm_reg;
  WRITE_VIDEO_LONG((ULONG *) ptr, ANTIC_lookup_gtia9[pixel]);
  pm_reg = GTIA_pm_scanline[i];
  if (pm_reg) {
   pm_reg = pm_lookup_ptr[pm_reg];
   if (pm_reg == L_PF3) {



    WRITE_VIDEO(ptr, pixel | (pixel << 8) | ANTIC_cl[C_PF3]);

   }
   else {
    WRITE_VIDEO(ptr, COLOUR(pm_reg));
   }
  }
  i++;
  pm_reg = GTIA_pm_scanline[i];
  if (pm_reg) {
   pm_reg = pm_lookup_ptr[pm_reg];
   if (pm_reg == L_PF3) {



    WRITE_VIDEO(ptr + 1, pixel | (pixel << 8) | ANTIC_cl[C_PF3]);

   }
   else {
    WRITE_VIDEO(ptr + 1, COLOUR(pm_reg));
   }
  }
  i++;
 }
 do_border();
}
