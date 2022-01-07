
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int base; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {int base; } ;


 int SYSTEM_MD ;
 int boot_rom ;
 TYPE_3__ cart ;
 TYPE_2__ m68k ;
 int system_bios ;

void gen_bankswitch_w(unsigned int data)
{

  if (system_bios & SYSTEM_MD)
  {
    if (data & 1)
    {

      m68k.memory_map[0].base = cart.base;
    }
    else
    {

      m68k.memory_map[0].base = boot_rom;
    }
  }
}
