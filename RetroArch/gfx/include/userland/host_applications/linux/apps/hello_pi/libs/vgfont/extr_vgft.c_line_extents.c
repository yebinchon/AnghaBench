
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VGfloat ;
struct TYPE_12__ {TYPE_6__* ft_face; } ;
typedef TYPE_3__ VGFT_FONT_T ;
struct TYPE_14__ {TYPE_2__* glyph; } ;
struct TYPE_13__ {int y; int x; } ;
struct TYPE_10__ {int x; } ;
struct TYPE_11__ {TYPE_1__ advance; } ;
typedef TYPE_4__ FT_Vector ;


 int FT_Get_Char_Index (TYPE_6__*,char const) ;
 scalar_t__ FT_Get_Kerning (TYPE_6__*,int,int,int ,TYPE_4__*) ;
 int FT_KERNING_DEFAULT ;
 int FT_LOAD_DEFAULT ;
 int FT_Load_Glyph (TYPE_6__*,int,int ) ;
 int assert (int ) ;
 scalar_t__ float_from_26_6 (int ) ;

__attribute__((used)) static void line_extents(VGFT_FONT_T *font, VGfloat *x, VGfloat *y, const char *text, int chars_count)
{
   int i;
   int prev_glyph_index = 0;
   if (chars_count == 0) return;

   for (i=0; i < chars_count; i++)
   {
      int glyph_index = FT_Get_Char_Index(font->ft_face, text[i]);
      if (!glyph_index) return;

      if (i != 0)
      {
         FT_Vector kern;
         if (FT_Get_Kerning(font->ft_face, prev_glyph_index, glyph_index,
                            FT_KERNING_DEFAULT, &kern))
         {
            assert(0);
         }
         *x += float_from_26_6(kern.x);
         *y += float_from_26_6(kern.y);
      }
      FT_Load_Glyph(font->ft_face, glyph_index, FT_LOAD_DEFAULT);
      *x += float_from_26_6(font->ft_face->glyph->advance.x);

      prev_glyph_index = glyph_index;
   }
}
