
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int * rom; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {int * base; } ;


 TYPE_3__ cart ;
 TYPE_2__ m68k ;

__attribute__((used)) static uint32 mapper_radica_r(uint32 address)
{
  int i = 0;
  address = (address >> 1);


  for (i = 0; i < 64; i++)
  {
    m68k.memory_map[i].base = &cart.rom[((address++)& 0x3f)<< 16];
  }

  return 0xffff;
}
