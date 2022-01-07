
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAMEBUFF_WHOLESIZE ;
 int * gp2x_screenaddr_old ;
 int * gp2x_screens ;
 int gp2x_video_RGB_setscaling_ (int ,int,int) ;
 int gp2x_video_changemode_ll_ (int,int ) ;
 int * memregs ;
 int munmap (int ,int ) ;

void vid_mmsp2_finish(void)
{
 gp2x_video_RGB_setscaling_(0, 320, 240);
 gp2x_video_changemode_ll_(16, 0);

 memregs[0x290E>>1] = gp2x_screenaddr_old[0];
 memregs[0x2910>>1] = gp2x_screenaddr_old[1];
 memregs[0x2912>>1] = gp2x_screenaddr_old[2];
 memregs[0x2914>>1] = gp2x_screenaddr_old[3];

 munmap(gp2x_screens[0], FRAMEBUFF_WHOLESIZE);
}
