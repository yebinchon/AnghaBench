
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 TYPE_1__ currentConfig ;
 int* fb_lock (int) ;
 int fb_unlock () ;
 int* giz_screen ;
 int memset32 (int*,int ,int) ;

__attribute__((used)) static void clearArea(int full)
{
 if (giz_screen == ((void*)0))
  giz_screen = fb_lock(1);
 if (full) memset32(giz_screen, 0, 320*240*2/4);
 else memset32((int *)((char *)giz_screen + 321*232*2), 0, 321*8*2/4);

 if (currentConfig.EmuOpt&0x8000) {
  fb_unlock();
  giz_screen = fb_lock(0);
  if (full) memset32(giz_screen, 0, 320*240*2/4);
  else memset32((int *)((char *)giz_screen + 321*232*2), 0, 321*8*2/4);
 }
}
