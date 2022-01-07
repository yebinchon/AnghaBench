
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flip_after_sync ;
 int g_menubg_ptr ;
 int g_menuscreen_h ;
 int g_menuscreen_w ;
 int gp2x_dev_id ;
 int gp2x_evdev_pdata ;
 int gp2x_make_fb_bufferable (int) ;
 int gp2x_memset_all_buffers (int ,int ,int) ;
 int gp2x_menu_init () ;
 int * gp2x_screens ;
 int in_evdev_init (int *) ;
 int in_gp2x_defbinds ;
 int in_gp2x_init (int ) ;
 int in_probe () ;
 int plat_target_setup_input () ;
 int sharedmem940_init () ;
 int vid_mmsp2_init () ;
 int vid_pollux_init () ;
 int warm_init () ;

void plat_init(void)
{
 warm_init();

 switch (gp2x_dev_id) {
 case 129:
  sharedmem940_init();
  vid_mmsp2_init();
  break;
 case 128:
 case 130:
  vid_pollux_init();
  break;
 }

 g_menuscreen_w = 320;
 g_menuscreen_h = 240;
 gp2x_memset_all_buffers(0, 0, 320*240*2);

 gp2x_make_fb_bufferable(1);


 g_menubg_ptr = gp2x_screens[2];

 flip_after_sync = 1;
 gp2x_menu_init();

 in_evdev_init(&gp2x_evdev_pdata);
 in_gp2x_init(in_gp2x_defbinds);
 in_probe();
 plat_target_setup_input();
}
