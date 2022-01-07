
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ VGfloat ;
typedef int VGbitfield ;
struct TYPE_10__ {TYPE_2__* ft_face; } ;
typedef TYPE_4__ VGFT_FONT_T ;
struct TYPE_9__ {int height; int descender; } ;
struct TYPE_8__ {TYPE_1__* size; } ;
struct TYPE_7__ {TYPE_3__ metrics; } ;


 int draw_line (TYPE_4__*,scalar_t__,scalar_t__,char const*,int,int ) ;
 scalar_t__ float_from_26_6 (int ) ;

void vgft_font_draw(VGFT_FONT_T *font, VGfloat x, VGfloat y, const char *text, unsigned text_length, VGbitfield paint_modes)
{
   VGfloat descent = float_from_26_6(font->ft_face->size->metrics.descender);
   int last_draw = 0;
   int i = 0;
   y -= descent;
   for (;;) {
      int last = !text[i] || (text_length && i==text_length);

      if ((text[i] == '\n') || last)
      {
         draw_line(font, x, y, text + last_draw, i - last_draw, paint_modes);
         last_draw = i+1;
         y -= float_from_26_6(font->ft_face->size->metrics.height);
      }
      if (last)
      {
         break;
      }
      ++i;
   }
}
