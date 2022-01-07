
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GP2X_DEV_WIZ ;
 int gp2x_current_bpp ;
 scalar_t__ gp2x_dev_id ;
 int * gp2x_screens ;
 int gp2x_video_RGB_setscaling (int ,int,int) ;
 int gp2x_video_changemode_ll (int,int ) ;
 int gp2x_video_flip2 () ;
 int gp2x_video_wait_vsync () ;
 int memset (int ,int ,int) ;

void plat_video_menu_enter(int is_rom_loaded)
{
 if (gp2x_current_bpp != 16 || gp2x_dev_id == GP2X_DEV_WIZ) {

  gp2x_video_wait_vsync();
  memset(gp2x_screens[0], 0, 320*240*2);
  memset(gp2x_screens[1], 0, 320*240*2);
  gp2x_video_flip2();
  gp2x_video_flip2();
 }
 else
  gp2x_video_flip2();


 gp2x_video_changemode_ll(16, 0);
 gp2x_video_RGB_setscaling(0, 320, 240);
}
