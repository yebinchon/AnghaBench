
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VGfloat ;
typedef int VGbitfield ;
typedef int VGFT_FONT_T ;


 int CHAR_COUNT_MAX ;
 int VG_GLYPH_ORIGIN ;
 int draw_chars (int *,char const*,int,int ,int) ;
 int vgSetfv (int ,int,int *) ;

__attribute__((used)) static void draw_line(VGFT_FONT_T *font, VGfloat x, VGfloat y, const char *text, int char_count, VGbitfield paint_modes) {
   if (char_count == 0) return;


   VGfloat glor[] = { x, y };
   vgSetfv(VG_GLYPH_ORIGIN, 2, glor);


   const char *curr_text = text;
   int chars_left = char_count;
   while (chars_left > CHAR_COUNT_MAX) {
      draw_chars(font, curr_text, CHAR_COUNT_MAX, paint_modes, 1);
      chars_left -= CHAR_COUNT_MAX;
      curr_text += CHAR_COUNT_MAX;
   }


   draw_chars(font, curr_text, chars_left, paint_modes, 0);
}
