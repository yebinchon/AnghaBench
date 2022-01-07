
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READPNG_BG ;
 int g_menubg_ptr ;
 int g_menuscreen_h ;
 int g_menuscreen_w ;
 int make_bg (int ) ;
 int memset (int ,int ,int) ;
 int plat_get_skin_dir (char*,int) ;
 int plat_video_menu_enter (int) ;
 scalar_t__ readpng (int ,char*,int ,int,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void menu_enter(int is_rom_loaded)
{
 if (is_rom_loaded)
 {
  make_bg(0);
 }
 else
 {
  int pos;
  char buff[256];
  pos = plat_get_skin_dir(buff, 256);
  strcpy(buff + pos, "background.png");


  if (readpng(g_menubg_ptr, buff, READPNG_BG,
      g_menuscreen_w, g_menuscreen_h) < 0)
   memset(g_menubg_ptr, 0, g_menuscreen_w * g_menuscreen_h * 2);
 }

 plat_video_menu_enter(is_rom_loaded);
}
