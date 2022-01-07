
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ANTIC_VideoPutByte (int ,int) ;
 int Screen_WIDTH ;
 scalar_t__ Screen_atari ;
 int* charset ;
 scalar_t__* colour_translation_table ;
 int curses_putch (int,int,int,int,int) ;

__attribute__((used)) static void Plot(int fg, int bg, int ch, int x, int y)
{



 const UBYTE *font_ptr = charset + (ch & 0x7f) * 8;
 UBYTE *ptr = (UBYTE *) Screen_atari + 24 * Screen_WIDTH + 32 + y * (8 * Screen_WIDTH) + x * 8;
 int i;
 int j;

 for (i = 0; i < 8; i++) {
  UBYTE data = *font_ptr++;
  for (j = 0; j < 8; j++) {



   ANTIC_VideoPutByte(ptr++, (UBYTE) (data & 0x80 ? fg : bg));

   data <<= 1;
  }
  ptr += Screen_WIDTH - 8;
 }

}
