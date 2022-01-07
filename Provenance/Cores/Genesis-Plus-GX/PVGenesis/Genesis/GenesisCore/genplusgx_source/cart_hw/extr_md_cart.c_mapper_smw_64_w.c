
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int rom; } ;
struct TYPE_7__ {TYPE_1__* memory_map; } ;
struct TYPE_6__ {int* sram; } ;
struct TYPE_5__ {int base; } ;


 TYPE_4__ cart ;
 TYPE_3__ m68k ;
 int m68k_unused_8_w (int,int) ;
 TYPE_2__ sram ;

__attribute__((used)) static void mapper_smw_64_w(uint32 address, uint32 data)
{

  switch ((address >> 16) & 0x07)
  {
    case 0x00:
    {
      if (address & 2)
      {

        switch (sram.sram[0x00] & 0x07)
        {
          case 0x00:
          {

            sram.sram[0x06] = ((sram.sram[0x06] ^ sram.sram[0x01]) ^ data) & 0xFE;
            break;
          }

          case 0x01:
          {

            sram.sram[0x07] = data & 0xFE;
            break;
          }

          case 0x07:
          {

            m68k.memory_map[0x61].base = m68k.memory_map[0x69].base = cart.rom + 0x080000 + ((data & 0x1c) << 14);
            break;
          }

          default:
          {

            break;
          }
        }


        sram.sram[0x01] = data;
      }
      else
      {

        sram.sram[0x00] = data;
      }
      return;
    }

    case 0x01:
    {
      if (address & 2)
      {

        sram.sram[0x02] = data;
      }
      return;
    }

    case 0x04:
    {
      if (address & 2)
      {

        sram.sram[0x04] = data;
      }
      else
      {

        sram.sram[0x03] = data;
      }
      return;
    }

    case 0x06:
    {

      return;
    }

    case 0x07:
    {
      if (!(address & 2))
      {

        sram.sram[0x05] = data;


        if (sram.sram[0x02] & 0x80)
        {

          m68k.memory_map[0x60].base = m68k.memory_map[0x68].base = cart.rom + 0x080000 + ((data & 0x1c) << 14);
        }
      }
      return;
    }

    default:
    {
      m68k_unused_8_w(address, data);
      return;
    }
  }
}
