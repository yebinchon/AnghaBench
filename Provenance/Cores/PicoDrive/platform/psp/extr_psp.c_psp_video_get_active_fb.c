
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* VRAM_FB0 ;
 void* VRAM_FB1 ;
 scalar_t__ current_screen ;

void *psp_video_get_active_fb(void)
{
 return current_screen ? VRAM_FB1 : VRAM_FB0;
}
