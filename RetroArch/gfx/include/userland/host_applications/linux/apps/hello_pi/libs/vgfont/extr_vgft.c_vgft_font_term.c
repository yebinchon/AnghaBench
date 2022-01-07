
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vg_font; scalar_t__ ft_face; } ;
typedef TYPE_1__ VGFT_FONT_T ;


 int FT_Done_Face (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int vgDestroyFont (scalar_t__) ;

void vgft_font_term(VGFT_FONT_T *font)
{
   if (font->ft_face)
      FT_Done_Face(font->ft_face);
   if (font->vg_font)
      vgDestroyFont(font->vg_font);
   memset(font, 0, sizeof(*font));
}
