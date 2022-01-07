
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int target_y; int tgt_stride; int target_x; int con_xres; scalar_t__ con_yres; scalar_t__* destbuffer; } ;


 int FALSE ;
 int TRUE ;
 scalar_t__* VIDEO_GetCurrentFramebuffer () ;
 int VI_DISPLAY_PIX_SZ ;
 TYPE_1__* curr_con ;
 int do_xfb_copy ;

void __console_vipostcb(u32 retraceCnt)
{
 u32 ycnt,xcnt, fb_stride;
 u32 *fb,*ptr;

 do_xfb_copy = TRUE;

 ptr = curr_con->destbuffer;
 fb = VIDEO_GetCurrentFramebuffer()+(curr_con->target_y*curr_con->tgt_stride) + curr_con->target_x*VI_DISPLAY_PIX_SZ;
 fb_stride = curr_con->tgt_stride/4 - (curr_con->con_xres/VI_DISPLAY_PIX_SZ);

 for(ycnt=curr_con->con_yres;ycnt>0;ycnt--)
 {
  for(xcnt=curr_con->con_xres;xcnt>0;xcnt-=VI_DISPLAY_PIX_SZ)
  {
   *fb++ = *ptr++;
  }
  fb += fb_stride;
 }

 do_xfb_copy = FALSE;
}
