
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int rom; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {int base; } ;


 TYPE_3__ cart ;
 TYPE_2__ m68k ;

__attribute__((used)) static uint32 mapper_sf004_r(uint32 address)
{

  return (((m68k.memory_map[0x00].base - cart.rom) >> 18) << 4);
}
