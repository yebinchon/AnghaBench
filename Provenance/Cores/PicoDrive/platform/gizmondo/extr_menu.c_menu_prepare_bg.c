
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READPNG_BG ;
 scalar_t__ bg_buffer ;
 int * fb_lock (int) ;
 int fb_unlock () ;
 int * giz_screen ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int memset (scalar_t__,int ,int) ;
 int menu_darken_bg (scalar_t__,char*,int,int) ;
 int readpng (scalar_t__,char*,int ) ;

__attribute__((used)) static void menu_prepare_bg(int use_game_bg)
{
 if (use_game_bg)
 {

  if (giz_screen == ((void*)0))
   giz_screen = fb_lock(1);
  memset(bg_buffer, 0, 321*8*2);
  menu_darken_bg(bg_buffer + 321*8*2, (char *)giz_screen + 321*8*2, 321*224, 1);
  memset(bg_buffer + 321*232*2, 0, 321*8*2);
  fb_unlock();
  giz_screen = ((void*)0);
 }
 else
 {
  int i;

  readpng(bg_buffer, "skin/background.png", READPNG_BG);

  for (i = 239; i > 0; i--)
   memmove(bg_buffer + 321*2*i, bg_buffer + 320*2*i, 320*2);
 }
}
