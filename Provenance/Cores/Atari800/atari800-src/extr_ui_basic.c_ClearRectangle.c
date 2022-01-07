
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ANTIC_VideoMemset (int *,int ,int) ;
 int Screen_WIDTH ;
 scalar_t__ Screen_atari ;
 scalar_t__* colour_translation_table ;
 int curses_clear_rectangle (int,int,int,int) ;

__attribute__((used)) static void ClearRectangle(int bg, int x1, int y1, int x2, int y2)
{



 UBYTE *ptr = (UBYTE *) Screen_atari + Screen_WIDTH * 24 + 32 + x1 * 8 + y1 * (Screen_WIDTH * 8);
 int bytesperline = (x2 - x1 + 1) << 3;
 UBYTE *end_ptr = (UBYTE *) Screen_atari + Screen_WIDTH * 32 + 32 + y2 * (Screen_WIDTH * 8);
 while (ptr < end_ptr) {



  ANTIC_VideoMemset(ptr, (UBYTE) bg, bytesperline);

  ptr += Screen_WIDTH;
 }

}
