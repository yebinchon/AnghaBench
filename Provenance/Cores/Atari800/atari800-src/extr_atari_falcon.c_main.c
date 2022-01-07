
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_Frame () ;
 int Atari800_Initialise (int*,char**) ;
 scalar_t__ Atari800_display_screen ;
 int INPUT_key_code ;
 int PLATFORM_DisplayScreen () ;
 int PLATFORM_Keyboard () ;

int main(int argc, char **argv)
{

 if (!Atari800_Initialise(&argc, argv))
  return 3;


 for (;;) {
  INPUT_key_code = PLATFORM_Keyboard();
  Atari800_Frame();
  if (Atari800_display_screen)
   PLATFORM_DisplayScreen();
 }
}
