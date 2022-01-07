
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; scalar_t__ image; } ;


 int MEMORY_CartA0bfDisable () ;
 int MEMORY_CartA0bfEnable () ;
 int MEMORY_CopyROM (int,int,scalar_t__) ;
 int MEMORY_dFillMem (int,int,int) ;
 TYPE_1__* active_cart ;

__attribute__((used)) static void set_bank_A0AF(int main, int old_state)
{
 if (active_cart->state < 0)
  MEMORY_CartA0bfDisable();
 else {
  MEMORY_CartA0bfEnable();
  if (active_cart->state == 0xff)

   MEMORY_dFillMem(0xa000, 0xff, 0x1000);
  else
   MEMORY_CopyROM(0xa000, 0xafff, active_cart->image + active_cart->state * 0x1000);
  if (old_state < 0)
   MEMORY_CopyROM(0xb000, 0xbfff, active_cart->image + main);
 }
}
