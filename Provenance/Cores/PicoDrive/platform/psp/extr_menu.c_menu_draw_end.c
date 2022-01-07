
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int psp_video_flip (int) ;

void menu_draw_end(void)
{
 psp_video_flip(1);
}
