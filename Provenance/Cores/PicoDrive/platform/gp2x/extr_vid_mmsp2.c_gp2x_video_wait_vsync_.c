
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short* memregs ;
 int spend_cycles (int) ;

__attribute__((used)) static void gp2x_video_wait_vsync_(void)
{
 unsigned short v = memregs[0x1182>>1];
 while (!((v ^ memregs[0x1182>>1]) & 0x10))
  spend_cycles(1024);
}
