
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
struct TYPE_6__ {unsigned char (* read ) (unsigned int) ;} ;
struct TYPE_5__ {int base; } ;


 unsigned char READ_BYTE (int ,unsigned int) ;
 TYPE_4__ Z80 ;
 unsigned char fm_read (int ,unsigned int) ;
 TYPE_3__ m68k ;
 unsigned char stub1 (unsigned int) ;
 unsigned char stub2 (unsigned int) ;
 unsigned char z80_unused_r (unsigned int) ;
 unsigned int zbank ;
 TYPE_2__* zbank_memory_map ;
 unsigned char* zram ;

unsigned char z80_memory_r(unsigned int address)
{
  switch((address >> 13) & 7)
  {
    case 0:
    case 1:
    {
      return zram[address & 0x1FFF];
    }

    case 2:
    {
      return fm_read(Z80.cycles, address & 3);
    }

    case 3:
    {
      if ((address >> 8) == 0x7F)
      {
        return (*zbank_memory_map[0xc0].read)(address);
      }
      return z80_unused_r(address);
    }

    default:
    {
      address = zbank | (address & 0x7FFF);
      if (zbank_memory_map[address >> 16].read)
      {
        return (*zbank_memory_map[address >> 16].read)(address);
      }
      return READ_BYTE(m68k.memory_map[address >> 16].base, address & 0xFFFF);
    }
  }
}
