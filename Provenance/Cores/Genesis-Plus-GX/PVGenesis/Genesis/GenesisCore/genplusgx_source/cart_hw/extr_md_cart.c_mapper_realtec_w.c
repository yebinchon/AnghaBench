
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int* regs; } ;
struct TYPE_8__ {TYPE_2__ hw; int * rom; } ;
struct TYPE_7__ {TYPE_1__* memory_map; } ;
struct TYPE_5__ {int * base; } ;


 TYPE_4__ cart ;
 TYPE_3__ m68k ;

__attribute__((used)) static void mapper_realtec_w(uint32 address, uint32 data)
{
  switch (address)
  {
    case 0x402000:
    {

      cart.hw.regs[2] = data << 1;
      return;
    }

    case 0x404000:
    {

      cart.hw.regs[0] = data & 7;
      return;
    }

    case 0x400000:
    {

      cart.hw.regs[1] = data & 6;


      if (cart.hw.regs[2])
      {

        uint32 base = (cart.hw.regs[0] << 1) | (cart.hw.regs[1] << 3);


        int i;
        for (i=0x00; i<0x40; i++)
        {
          m68k.memory_map[i].base = &cart.rom[(base + (i % cart.hw.regs[2])) << 16];
        }
      }
      return;
    }
  }
}
