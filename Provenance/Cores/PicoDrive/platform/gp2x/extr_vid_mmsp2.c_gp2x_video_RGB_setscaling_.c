
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* gp2x_screenaddrs ;
 scalar_t__* gp2x_screenaddrs_use ;
 unsigned long* memregl ;
 int* memregs ;

__attribute__((used)) static void gp2x_video_RGB_setscaling_(int ln_offs, int W, int H)
{
 float escalaw, escalah;
 int bpp = (memregs[0x28DA>>1]>>9)&0x3;
 unsigned short scalw;


 gp2x_screenaddrs_use[0] = gp2x_screenaddrs[0] + ln_offs * 320 * bpp;
 gp2x_screenaddrs_use[1] = gp2x_screenaddrs[1] + ln_offs * 320 * bpp;
 gp2x_screenaddrs_use[2] = gp2x_screenaddrs[2] + ln_offs * 320 * bpp;
 gp2x_screenaddrs_use[3] = gp2x_screenaddrs[3] + ln_offs * 320 * bpp;

 escalaw = 1024.0;
 escalah = 320.0;

 if (memregs[0x2800>>1]&0x100)
 {
  escalaw=489.0;
  if (memregs[0x2818>>1] == 287)
   escalah=274.0;
  else if (memregs[0x2818>>1] == 239)
   escalah=331.0;
 }


 scalw = (unsigned short)((float)escalaw *(W/320.0));


 if (H != 240 && W == 320) scalw--;
 memregs[0x2906>>1]=scalw;

 memregl[0x2908>>2]=(unsigned long)((float)escalah *bpp *(H/240.0));
}
