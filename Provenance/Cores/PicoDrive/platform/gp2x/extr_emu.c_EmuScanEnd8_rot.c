
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* reg; } ;
struct TYPE_4__ {TYPE_1__ video; } ;


 TYPE_2__ Pico ;
 int g_screen_ptr ;
 int rot_buff ;
 int rotated_blit8 (int ,int ,unsigned int,int) ;

__attribute__((used)) static int EmuScanEnd8_rot(unsigned int num)
{
 if ((num & 3) != 3)
  return 0;
 rotated_blit8(g_screen_ptr, rot_buff, num + 1,
  !(Pico.video.reg[12] & 1));
 return 0;
}
