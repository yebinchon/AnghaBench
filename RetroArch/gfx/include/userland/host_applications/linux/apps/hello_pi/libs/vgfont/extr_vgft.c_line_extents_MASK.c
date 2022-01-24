#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VGfloat ;
struct TYPE_12__ {TYPE_6__* ft_face; } ;
typedef  TYPE_3__ VGFT_FONT_T ;
struct TYPE_14__ {TYPE_2__* glyph; } ;
struct TYPE_13__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {int /*<<< orphan*/  x; } ;
struct TYPE_11__ {TYPE_1__ advance; } ;
typedef  TYPE_4__ FT_Vector ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*,char const) ; 
 scalar_t__ FUNC1 (TYPE_6__*,int,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FT_KERNING_DEFAULT ; 
 int /*<<< orphan*/  FT_LOAD_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(VGFT_FONT_T *font, VGfloat *x, VGfloat *y, const char *text, int chars_count)
{
   int i;
   int prev_glyph_index = 0;
   if (chars_count == 0) return;

   for (i=0; i < chars_count; i++)
   {
      int glyph_index = FUNC0(font->ft_face, text[i]);
      if (!glyph_index) return;

      if (i != 0)
      {
         FT_Vector kern;
         if (FUNC1(font->ft_face, prev_glyph_index, glyph_index,
                            FT_KERNING_DEFAULT, &kern))
         {
            FUNC3(0);
         }
         *x += FUNC4(kern.x);
         *y += FUNC4(kern.y);
      }
      FUNC2(font->ft_face, glyph_index, FT_LOAD_DEFAULT);
      *x += FUNC4(font->ft_face->glyph->advance.x);

      prev_glyph_index = glyph_index;
   }
}