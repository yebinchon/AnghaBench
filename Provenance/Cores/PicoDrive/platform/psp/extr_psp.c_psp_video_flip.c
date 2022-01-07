
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSP_DISPLAY_PIXEL_FORMAT_565 ;
 int PSP_DISPLAY_SETBUF_IMMEDIATE ;
 int PSP_DISPLAY_SETBUF_NEXTFRAME ;
 int VRAM_FB0 ;
 int VRAM_FB1 ;
 int current_screen ;
 int psp_screen ;
 int sceDisplaySetFrameBuf (int ,int,int ,int ) ;
 int sceDisplayWaitVblankStart () ;

void psp_video_flip(int wait_vsync)
{
 if (wait_vsync) sceDisplayWaitVblankStart();
 sceDisplaySetFrameBuf(psp_screen, 512, PSP_DISPLAY_PIXEL_FORMAT_565,
  wait_vsync ? PSP_DISPLAY_SETBUF_IMMEDIATE : PSP_DISPLAY_SETBUF_NEXTFRAME);
 current_screen ^= 1;
 psp_screen = current_screen ? VRAM_FB0 : VRAM_FB1;
}
