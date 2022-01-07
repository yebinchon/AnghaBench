
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {scalar_t__ rom; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {scalar_t__ base; } ;


 TYPE_3__ cart ;
 TYPE_2__ m68k ;

__attribute__((used)) static void mapper_sf002_w(uint32 address, uint32 data)
{
  int i;
  if (data & 0x80)
  {

    for (i=0x20; i<0x3C; i++)
    {
      m68k.memory_map[i].base = cart.rom + ((i & 0x1F) << 16);
    }
  }
  else
  {

    for (i=0x20; i<0x3C; i++)
    {
      m68k.memory_map[i].base = cart.rom + (i << 16);
    }
  }
}
