
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int cycles; } ;
struct TYPE_7__ {TYPE_1__* memory_map; } ;
struct TYPE_6__ {int (* write ) (unsigned int,unsigned char) ;} ;
struct TYPE_5__ {int base; } ;


 int WRITE_BYTE (int ,unsigned int,unsigned char) ;
 TYPE_4__ Z80 ;
 int fm_write (int ,unsigned int,unsigned char) ;
 int gen_zbank_w (unsigned char) ;
 TYPE_3__ m68k ;
 int stub1 (unsigned int,unsigned char) ;
 int stub2 (unsigned int,unsigned char) ;
 int z80_unused_w (unsigned int,unsigned char) ;
 unsigned int zbank ;
 TYPE_2__* zbank_memory_map ;
 unsigned char* zram ;

void z80_memory_w(unsigned int address, unsigned char data)
{
  switch((address >> 13) & 7)
  {
    case 0:
    case 1:
    {
      zram[address & 0x1FFF] = data;
      return;
    }

    case 2:
    {
      fm_write(Z80.cycles, address & 3, data);
      return;
    }

    case 3:
    {
      switch(address >> 8)
      {
        case 0x60:
        {
          gen_zbank_w(data & 1);
          return;
        }

        case 0x7F:
        {
          (*zbank_memory_map[0xc0].write)(address, data);
          return;
        }

        default:
        {
          z80_unused_w(address, data);
          return;
        }
      }
    }

    default:
    {
      address = zbank | (address & 0x7FFF);
      if (zbank_memory_map[address >> 16].write)
      {
        (*zbank_memory_map[address >> 16].write)(address, data);
        return;
      }
      WRITE_BYTE(m68k.memory_map[address >> 16].base, address & 0xFFFF, data);
      return;
    }
  }
}
