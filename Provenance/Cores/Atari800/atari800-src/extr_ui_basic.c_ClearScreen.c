
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ANTIC_VideoMemset (int *,int,int) ;
 int ClearRectangle (int,int ,int ,int,int) ;
 int Screen_HEIGHT ;
 int Screen_WIDTH ;
 scalar_t__ Screen_atari ;
 int* colour_translation_table ;
 int curses_clear_screen () ;

__attribute__((used)) static void ClearScreen(void)
{






 ANTIC_VideoMemset((UBYTE *) Screen_atari, 0x00, Screen_HEIGHT * Screen_WIDTH);

 ClearRectangle(0x94, 0, 0, 39, 23);

}
