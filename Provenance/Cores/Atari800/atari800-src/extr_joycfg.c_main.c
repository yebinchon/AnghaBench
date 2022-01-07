
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BACKGROUND ;
 int Screen (char*,scalar_t__) ;
 scalar_t__ TITLE ;
 int _NOCURSOR ;
 int _NORMALCURSOR ;
 int _set_screen_lines (int) ;
 int _setcursortype (int ) ;
 int clrscr () ;
 int mainmenu () ;
 int read_config () ;
 int save_config () ;
 int textattr (int) ;
 int window (int,int,int,int) ;

int main()
{
  int ok;

  read_config();
  _set_screen_lines(25);
  _setcursortype(_NOCURSOR);

  Screen("Joystick configuration utility for Atari 800 emulator",BACKGROUND+TITLE);
  ok=mainmenu();

  window(1,1,80,25);
  textattr(0xf);
  clrscr();
  _setcursortype(_NORMALCURSOR);

  if (ok) save_config();

  return 0;
}
