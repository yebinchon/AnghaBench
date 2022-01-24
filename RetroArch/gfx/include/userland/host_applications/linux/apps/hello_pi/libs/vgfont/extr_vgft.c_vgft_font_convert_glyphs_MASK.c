#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  float VGfloat ;
typedef  scalar_t__ VGPath ;
struct TYPE_13__ {TYPE_6__* ft_face; int /*<<< orphan*/  vg_font; } ;
typedef  TYPE_3__ VGFT_FONT_T ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
struct TYPE_15__ {TYPE_2__* glyph; } ;
struct TYPE_14__ {scalar_t__ n_contours; int /*<<< orphan*/  n_points; int /*<<< orphan*/  contours; int /*<<< orphan*/  tags; int /*<<< orphan*/  points; } ;
struct TYPE_11__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_12__ {TYPE_1__ advance; TYPE_4__ outline; } ;
typedef  scalar_t__ FT_ULong ;
typedef  int /*<<< orphan*/  FT_UInt ;
typedef  TYPE_4__ FT_Outline ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 scalar_t__ FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FT_LOAD_DEFAULT ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_ENOMEM ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  VG_FALSE ; 
 scalar_t__ VG_INVALID_HANDLE ; 
 int /*<<< orphan*/  VG_PATH_CAPABILITY_ALL ; 
 int /*<<< orphan*/  VG_PATH_DATATYPE_F ; 
 int /*<<< orphan*/  VG_PATH_FORMAT_STANDARD ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coords ; 
 float FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  segments ; 
 int /*<<< orphan*/  segments_count ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,float*,float*) ; 

VCOS_STATUS_T FUNC13(VGFT_FONT_T *font, unsigned int char_height, unsigned int dpi_x, unsigned int dpi_y)
{
   FT_UInt glyph_index;
   FT_ULong ch;

   if (FUNC4(font->ft_face, 0, char_height, dpi_x, dpi_y))
   {
      FUNC0(font->ft_face);
      FUNC10(font->vg_font);
      return VCOS_EINVAL;
   }

   ch = FUNC1(font->ft_face, &glyph_index);

   while (ch != 0)
   {
      if (FUNC3(font->ft_face, glyph_index, FT_LOAD_DEFAULT)) {
         FUNC0(font->ft_face);
         FUNC10(font->vg_font);
         return VCOS_ENOMEM;
      }

      VGPath vg_path;
      FT_Outline *outline = &font->ft_face->glyph->outline;
      if (outline->n_contours != 0) {
         vg_path = FUNC9(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_F, 1.0f, 0.0f, 0, 0, VG_PATH_CAPABILITY_ALL);
         FUNC5(vg_path != VG_INVALID_HANDLE);

         FUNC6(outline->points, outline->tags, outline->contours, outline->n_contours, outline->n_points);
         FUNC8(vg_path, segments_count, segments, coords);
      } else {
         vg_path = VG_INVALID_HANDLE;
      }

      VGfloat origin[] = { 0.0f, 0.0f };
      VGfloat escapement[] = { FUNC7(font->ft_face->glyph->advance.x), FUNC7(font->ft_face->glyph->advance.y) };
      FUNC12(font->vg_font, glyph_index, vg_path, VG_FALSE, origin, escapement);

      if (vg_path != VG_INVALID_HANDLE) {
         FUNC11(vg_path);
      }
      ch = FUNC2(font->ft_face, ch, &glyph_index);
   }

   return VCOS_SUCCESS;
}