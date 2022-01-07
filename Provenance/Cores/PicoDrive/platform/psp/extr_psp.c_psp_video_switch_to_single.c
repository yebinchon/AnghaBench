
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSP_DISPLAY_PIXEL_FORMAT_565 ;
 int PSP_DISPLAY_SETBUF_NEXTFRAME ;
 int VRAM_FB0 ;
 scalar_t__ current_screen ;
 int psp_screen ;
 int sceDisplaySetFrameBuf (int ,int,int ,int ) ;

void psp_video_switch_to_single(void)
{
 psp_screen = VRAM_FB0;
 sceDisplaySetFrameBuf(psp_screen, 512, PSP_DISPLAY_PIXEL_FORMAT_565, PSP_DISPLAY_SETBUF_NEXTFRAME);
 current_screen = 0;
}
