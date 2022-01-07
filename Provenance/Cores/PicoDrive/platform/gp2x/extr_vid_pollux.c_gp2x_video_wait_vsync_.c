
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregl ;
 int spend_cycles (int) ;

__attribute__((used)) static void gp2x_video_wait_vsync_(void)
{
 while (!(memregl[0x308c>>2] & (1 << 10)))
  spend_cycles(128);
 memregl[0x308c>>2] |= 1 << 10;
}
