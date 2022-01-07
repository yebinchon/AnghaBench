
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UWORD ;
struct TYPE_2__ {int state; scalar_t__ image; } ;


 scalar_t__ Atari800_MACHINE_5200 ;
 scalar_t__ Atari800_machine_type ;
 int MEMORY_CopyROM (int,int,scalar_t__) ;
 TYPE_1__* active_cart ;

void CARTRIDGE_BountyBob1(UWORD addr)
{
 if (Atari800_machine_type == Atari800_MACHINE_5200) {
  if (addr >= 0x4ff6 && addr <= 0x4ff9) {
   addr -= 0x4ff6;
   MEMORY_CopyROM(0x4000, 0x4fff, active_cart->image + addr * 0x1000);
   active_cart->state = (active_cart->state & 0x0c) | addr;
  }
 } else {
  if (addr >= 0x8ff6 && addr <= 0x8ff9) {
   addr -= 0x8ff6;
   MEMORY_CopyROM(0x8000, 0x8fff, active_cart->image + addr * 0x1000);
   active_cart->state = (active_cart->state & 0x0c) | addr;
  }
 }
}
