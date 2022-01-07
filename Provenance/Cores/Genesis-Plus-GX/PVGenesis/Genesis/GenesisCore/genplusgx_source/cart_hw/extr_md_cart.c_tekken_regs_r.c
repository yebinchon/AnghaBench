
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int* regs; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 TYPE_2__ cart ;
 int m68k_read_bus_16 (int) ;

__attribute__((used)) static uint32 tekken_regs_r(uint32 address)
{

  if ((address & 0x0e) == 0x02)
  {

    return (cart.hw.regs[0] - 1);
  }

  return m68k_read_bus_16(address);
}
