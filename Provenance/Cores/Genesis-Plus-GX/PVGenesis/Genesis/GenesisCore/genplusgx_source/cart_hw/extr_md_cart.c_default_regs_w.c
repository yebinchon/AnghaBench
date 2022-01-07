
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int* mask; int* addr; int* regs; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 TYPE_2__ cart ;
 int m68k_unused_8_w (int,int) ;

__attribute__((used)) static void default_regs_w(uint32 address, uint32 data)
{
  int i;
  for (i=0; i<4; i++)
  {
    if ((address & cart.hw.mask[i]) == cart.hw.addr[i])
    {
      cart.hw.regs[i] = data;
      return;
    }
  }
  m68k_unused_8_w(address, data);
}
