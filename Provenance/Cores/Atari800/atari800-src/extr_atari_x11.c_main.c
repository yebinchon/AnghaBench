
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_Frame () ;
 int Atari800_Initialise (int*,char**) ;
 scalar_t__ Atari800_display_screen ;
 int Atari_Mouse () ;
 scalar_t__ INPUT_CONSOL_NONE ;
 int INPUT_key_code ;
 scalar_t__ INPUT_key_consol ;
 int PLATFORM_DisplayScreen () ;
 int PLATFORM_Keyboard () ;
 scalar_t__ keyboard_consol ;
 scalar_t__ menu_consol ;

int main(int argc, char **argv)
{

 if (!Atari800_Initialise(&argc, argv))
  return 3;


 for (;;) {
  INPUT_key_code = PLATFORM_Keyboard();

  if (menu_consol != INPUT_CONSOL_NONE) {
   INPUT_key_consol = menu_consol;
   menu_consol = INPUT_CONSOL_NONE;
  }
  else
   INPUT_key_consol = keyboard_consol;

  Atari_Mouse();

  Atari800_Frame();
  if (Atari800_display_screen)
   PLATFORM_DisplayScreen();
 }
}
