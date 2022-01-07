
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; scalar_t__ image; } ;


 int MEMORY_CopyROM (int,int,scalar_t__) ;
 int MEMORY_dFillMem (int,int,int) ;
 TYPE_1__* active_cart ;

__attribute__((used)) static void set_bank_XEGS_8F_64(void)
{
 if (active_cart->state & 0x08)
  MEMORY_CopyROM(0x8000, 0x9fff, active_cart->image + (active_cart->state & ~0x08) * 0x2000);
 else

  MEMORY_dFillMem(0x8000, 0xff, 0x2000);
}
