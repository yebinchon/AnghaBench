
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef float VGfloat ;
typedef scalar_t__ VGPath ;
struct TYPE_13__ {TYPE_6__* ft_face; int vg_font; } ;
typedef TYPE_3__ VGFT_FONT_T ;
typedef int VCOS_STATUS_T ;
struct TYPE_15__ {TYPE_2__* glyph; } ;
struct TYPE_14__ {scalar_t__ n_contours; int n_points; int contours; int tags; int points; } ;
struct TYPE_11__ {int y; int x; } ;
struct TYPE_12__ {TYPE_1__ advance; TYPE_4__ outline; } ;
typedef scalar_t__ FT_ULong ;
typedef int FT_UInt ;
typedef TYPE_4__ FT_Outline ;


 int FT_Done_Face (TYPE_6__*) ;
 scalar_t__ FT_Get_First_Char (TYPE_6__*,int *) ;
 scalar_t__ FT_Get_Next_Char (TYPE_6__*,scalar_t__,int *) ;
 int FT_LOAD_DEFAULT ;
 scalar_t__ FT_Load_Glyph (TYPE_6__*,int ,int ) ;
 scalar_t__ FT_Set_Char_Size (TYPE_6__*,int ,unsigned int,unsigned int,unsigned int) ;
 int VCOS_EINVAL ;
 int VCOS_ENOMEM ;
 int VCOS_SUCCESS ;
 int VG_FALSE ;
 scalar_t__ VG_INVALID_HANDLE ;
 int VG_PATH_CAPABILITY_ALL ;
 int VG_PATH_DATATYPE_F ;
 int VG_PATH_FORMAT_STANDARD ;
 int assert (int) ;
 int convert_outline (int ,int ,int ,scalar_t__,int ) ;
 int coords ;
 float float_from_26_6 (int ) ;
 int segments ;
 int segments_count ;
 int vgAppendPathData (scalar_t__,int ,int ,int ) ;
 scalar_t__ vgCreatePath (int ,int ,float,float,int ,int ,int ) ;
 int vgDestroyFont (int ) ;
 int vgDestroyPath (scalar_t__) ;
 int vgSetGlyphToPath (int ,int ,scalar_t__,int ,float*,float*) ;

VCOS_STATUS_T vgft_font_convert_glyphs(VGFT_FONT_T *font, unsigned int char_height, unsigned int dpi_x, unsigned int dpi_y)
{
   FT_UInt glyph_index;
   FT_ULong ch;

   if (FT_Set_Char_Size(font->ft_face, 0, char_height, dpi_x, dpi_y))
   {
      FT_Done_Face(font->ft_face);
      vgDestroyFont(font->vg_font);
      return VCOS_EINVAL;
   }

   ch = FT_Get_First_Char(font->ft_face, &glyph_index);

   while (ch != 0)
   {
      if (FT_Load_Glyph(font->ft_face, glyph_index, FT_LOAD_DEFAULT)) {
         FT_Done_Face(font->ft_face);
         vgDestroyFont(font->vg_font);
         return VCOS_ENOMEM;
      }

      VGPath vg_path;
      FT_Outline *outline = &font->ft_face->glyph->outline;
      if (outline->n_contours != 0) {
         vg_path = vgCreatePath(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_F, 1.0f, 0.0f, 0, 0, VG_PATH_CAPABILITY_ALL);
         assert(vg_path != VG_INVALID_HANDLE);

         convert_outline(outline->points, outline->tags, outline->contours, outline->n_contours, outline->n_points);
         vgAppendPathData(vg_path, segments_count, segments, coords);
      } else {
         vg_path = VG_INVALID_HANDLE;
      }

      VGfloat origin[] = { 0.0f, 0.0f };
      VGfloat escapement[] = { float_from_26_6(font->ft_face->glyph->advance.x), float_from_26_6(font->ft_face->glyph->advance.y) };
      vgSetGlyphToPath(font->vg_font, glyph_index, vg_path, VG_FALSE, origin, escapement);

      if (vg_path != VG_INVALID_HANDLE) {
         vgDestroyPath(vg_path);
      }
      ch = FT_Get_Next_Char(font->ft_face, ch, &glyph_index);
   }

   return VCOS_SUCCESS;
}
