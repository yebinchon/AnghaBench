
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {scalar_t__ base; } ;


 int SYSTEM_MD ;
 TYPE_3__ cart ;
 TYPE_2__ m68k ;
 int system_bios ;

unsigned int gen_bankswitch_r(void)
{

  if (system_bios & SYSTEM_MD)
  {
    return (m68k.memory_map[0].base == cart.base);
  }

  return 0xff;
}
