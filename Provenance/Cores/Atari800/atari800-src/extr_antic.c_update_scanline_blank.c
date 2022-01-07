
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_HSCROL ;
 int* ANTIC_cpu2antic_ptr ;
 int ANTIC_cur_screen_pos ;
 size_t ANTIC_xpos ;
 int IR ;
 int draw_partial_scanline (int,int) ;

void update_scanline_blank(void)
{
 int actual_xpos = ANTIC_cpu2antic_ptr[ANTIC_xpos];
 int hscrol_adj = (IR & 0x10) ? ANTIC_HSCROL : 0;
 int hscrollsb_adj = (hscrol_adj & 1);
 int newpos;


 newpos = actual_xpos * 2 - 37 + hscrollsb_adj + 7;
 draw_partial_scanline(ANTIC_cur_screen_pos, newpos);
 ANTIC_cur_screen_pos = newpos;
}
