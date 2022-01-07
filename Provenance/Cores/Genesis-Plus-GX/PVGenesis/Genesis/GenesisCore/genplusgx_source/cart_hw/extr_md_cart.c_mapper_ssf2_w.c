
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_6__ {int * rom; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {int * base; } ;


 TYPE_3__ cart ;
 TYPE_2__ m68k ;

__attribute__((used)) static void mapper_ssf2_w(uint32 address, uint32 data)
{

  address = (address << 2) & 0x38;


  if (address)
  {
    uint32 i;
    uint8 *src = cart.rom + (data << 19);

    for (i=0; i<8; i++)
    {
      m68k.memory_map[address++].base = src + (i<<16);
    }
  }
}
