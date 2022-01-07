
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_screen_ptr ;
 int* gp2x_screenaddrs_use ;
 int * gp2x_screens ;
 unsigned short* memregs ;
 int screensel ;

__attribute__((used)) static void gp2x_video_flip_(void)
{
 unsigned short lsw = (unsigned short) gp2x_screenaddrs_use[screensel&3];
 unsigned short msw = (unsigned short)(gp2x_screenaddrs_use[screensel&3] >> 16);

   memregs[0x2910>>1] = msw;
   memregs[0x2914>>1] = msw;
 memregs[0x290E>>1] = lsw;
   memregs[0x2912>>1] = lsw;


 g_screen_ptr = gp2x_screens[++screensel&3];
}
