
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int Bconout (int,int) ;
 int Screen_HEIGHT ;
 int Screen_WIDTH ;
 int * Screen_atari_b ;
 int Supexec (int ) ;
 int VsetScreen (int ,int ,int,int) ;
 scalar_t__ delta_screen ;
 int init_kb ;
 int load_r ;
 int memset (int *,int ,int) ;
 scalar_t__ mode336x240_videl_settings ;
 int new_videl_mode_valid ;
 int new_videoram ;
 int * p_str_p ;
 scalar_t__ reprogram_VIDEL ;
 int set_new_colors () ;

void SetupEmulatedEnvironment(void)
{
 if (reprogram_VIDEL) {

  (void)VsetScreen(new_videoram, new_videoram, -1, -1);
  p_str_p = (ULONG *)mode336x240_videl_settings;
  Supexec(load_r);
  new_videl_mode_valid = 1;
 }

 set_new_colors();

 Supexec(init_kb);

 Bconout(4, 0x14);
}
