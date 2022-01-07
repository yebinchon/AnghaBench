
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* area; unsigned int mask; } ;
struct TYPE_4__ {TYPE_1__ cartridge; } ;


 TYPE_2__ scd ;

__attribute__((used)) static void cart_ram_write_byte(unsigned int address, unsigned int data)
{

  if (address & 1)
  {
    scd.cartridge.area[(address >> 1) & scd.cartridge.mask] = data;
  }
}
