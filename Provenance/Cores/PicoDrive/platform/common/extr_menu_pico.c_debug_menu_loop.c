
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBTN_DOWN ;
 int PBTN_L ;
 int PBTN_LEFT ;
 int PBTN_MA2 ;
 int PBTN_MA3 ;
 int PBTN_MBACK ;
 int PBTN_MOK ;
 int PBTN_R ;
 int PBTN_RIGHT ;
 int PBTN_UP ;
 int PDRAW_32X_ON ;
 int PDRAW_LAYERA_ON ;
 int PDRAW_LAYERB_ON ;
 int PDRAW_SPRITES_HI_ON ;
 int PDRAW_SPRITES_LOW_ON ;
 char* PDebug32x () ;
 int PDebugCPUStep () ;
 int PDebugDumpMem () ;
 char* PDebugMain () ;
 int PDebugShowPalette (scalar_t__,int) ;
 int PDebugShowSprite (unsigned short*,int,int) ;
 int PDebugShowSpriteStats (unsigned short*,int) ;
 char* PDebugSpriteList () ;
 int PicoDrawMask ;
 int PicoFrame () ;
 int PicoSkipFrame ;
 int * PsndOut ;
 int draw_frame_debug () ;
 int draw_text_debug (char*,int,int) ;
 int g_menuscreen_h ;
 scalar_t__ g_menuscreen_ptr ;
 int g_menuscreen_w ;
 int in_menu_wait (int,int *,int) ;
 int in_menu_wait_any (int *,int) ;
 int make_bg (int) ;
 int me_mfont_h ;
 int me_sfont_h ;
 int memset (scalar_t__,int ,int) ;
 int menu_draw_begin (int,int ) ;
 int menu_draw_end () ;
 int mkdir (char*,int) ;
 int mplayer_loop () ;
 int pemu_forced_frame (int,int ) ;
 int plat_debug_cat (char*) ;
 int smalltext_out16 (int ,int,char*,int) ;

__attribute__((used)) static void debug_menu_loop(void)
{
 int inp, mode = 0;
 int spr_offs = 0, dumped = 0;
 char *tmp;

 while (1)
 {
  menu_draw_begin(1, 0);
  switch (mode)
  {
   case 0: tmp = PDebugMain();
    plat_debug_cat(tmp);
    draw_text_debug(tmp, 0, 0);
    if (dumped) {
     smalltext_out16(g_menuscreen_w - 6 * me_sfont_h,
      g_menuscreen_h - me_mfont_h, "dumped", 0xffff);
     dumped = 0;
    }
    break;
   case 1: draw_frame_debug();
    break;
   case 2: pemu_forced_frame(1, 0);
    make_bg(1);
    PDebugShowSpriteStats((unsigned short *)g_menuscreen_ptr + (g_menuscreen_h/2 - 240/2)*g_menuscreen_w +
     g_menuscreen_w/2 - 320/2, g_menuscreen_w);
    break;
   case 3: memset(g_menuscreen_ptr, 0, g_menuscreen_w * g_menuscreen_h * 2);
    PDebugShowPalette(g_menuscreen_ptr, g_menuscreen_w);
    PDebugShowSprite((unsigned short *)g_menuscreen_ptr + g_menuscreen_w*120 + g_menuscreen_w/2 + 16,
     g_menuscreen_w, spr_offs);
    draw_text_debug(PDebugSpriteList(), spr_offs, 6);
    break;
   case 4: tmp = PDebug32x();
    draw_text_debug(tmp, 0, 0);
    break;
  }
  menu_draw_end();

  inp = in_menu_wait(PBTN_MOK|PBTN_MBACK|PBTN_MA2|PBTN_MA3|PBTN_L|PBTN_R |
     PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT, ((void*)0), 70);
  if (inp & PBTN_MBACK) return;
  if (inp & PBTN_L) { mode--; if (mode < 0) mode = 4; }
  if (inp & PBTN_R) { mode++; if (mode > 4) mode = 0; }
  switch (mode)
  {
   case 0:
    if (inp & PBTN_MOK)
     PDebugCPUStep();
    if (inp & PBTN_MA3) {
     while (inp & PBTN_MA3)
      inp = in_menu_wait_any(((void*)0), -1);
     mplayer_loop();
    }
    if ((inp & (PBTN_MA2|PBTN_LEFT)) == (PBTN_MA2|PBTN_LEFT)) {
     mkdir("dumps", 0777);
     PDebugDumpMem();
     while (inp & PBTN_MA2) inp = in_menu_wait_any(((void*)0), -1);
     dumped = 1;
    }
    break;
   case 1:
    if (inp & PBTN_LEFT) PicoDrawMask ^= PDRAW_LAYERB_ON;
    if (inp & PBTN_RIGHT) PicoDrawMask ^= PDRAW_LAYERA_ON;
    if (inp & PBTN_DOWN) PicoDrawMask ^= PDRAW_SPRITES_LOW_ON;
    if (inp & PBTN_UP) PicoDrawMask ^= PDRAW_SPRITES_HI_ON;
    if (inp & PBTN_MA2) PicoDrawMask ^= PDRAW_32X_ON;
    if (inp & PBTN_MOK) {
     PsndOut = ((void*)0);
     PicoSkipFrame = 1;
     PicoFrame();
     PicoSkipFrame = 0;
     while (inp & PBTN_MOK) inp = in_menu_wait_any(((void*)0), -1);
    }
    break;
   case 3:
    if (inp & PBTN_DOWN) spr_offs++;
    if (inp & PBTN_UP) spr_offs--;
    if (spr_offs < 0) spr_offs = 0;
    break;
  }
 }
}
