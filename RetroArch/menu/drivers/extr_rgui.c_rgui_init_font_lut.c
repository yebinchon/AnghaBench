
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int FONT_HEIGHT ;
 unsigned int FONT_OFFSET (unsigned int) ;
 unsigned int FONT_WIDTH ;
 unsigned int NUM_FONT_GLYPHS_EXTENDED ;
 int* bitmap_bin ;
 int** font_lut ;

__attribute__((used)) static void rgui_init_font_lut(void)
{
   unsigned symbol_index, i, j;


   for (symbol_index = 0; symbol_index < NUM_FONT_GLYPHS_EXTENDED; symbol_index++)
   {
      for (j = 0; j < FONT_HEIGHT; j++)
      {
         for (i = 0; i < FONT_WIDTH; i++)
         {
            uint8_t rem = 1 << ((i + j * FONT_WIDTH) & 7);
            unsigned offset = (i + j * FONT_WIDTH) >> 3;


            font_lut[symbol_index][i + (j * FONT_WIDTH)] = (bitmap_bin[FONT_OFFSET(symbol_index) + offset] & rem) > 0;
         }
      }
   }
}
