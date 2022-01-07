
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; scalar_t__ image; } ;


 int MEMORY_CartA0bfDisable () ;
 int MEMORY_CartA0bfEnable () ;
 int MEMORY_CopyROM (int,int,scalar_t__) ;
 TYPE_1__* active_cart ;

__attribute__((used)) static void set_bank_A0BF(int disable_mask, int bank_mask)
{
 if (active_cart->state & disable_mask)
  MEMORY_CartA0bfDisable();
 else {
  MEMORY_CartA0bfEnable();
  MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + (active_cart->state & bank_mask) * 0x2000);
 }
}
