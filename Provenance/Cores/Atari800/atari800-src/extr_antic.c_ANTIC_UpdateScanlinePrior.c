
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int* ANTIC_cpu2antic_ptr ;
 int ANTIC_cur_screen_pos ;
 size_t ANTIC_xpos ;
 int draw_partial_scanline (int,int) ;

void ANTIC_UpdateScanlinePrior(UBYTE byte)
{
 int actual_xpos = ANTIC_cpu2antic_ptr[ANTIC_xpos];
 int prior_mode_adj = 2;
 int newpos;
 newpos = actual_xpos * 2 - 37 + prior_mode_adj;
 draw_partial_scanline(ANTIC_cur_screen_pos, newpos);
 ANTIC_cur_screen_pos = newpos;
}
