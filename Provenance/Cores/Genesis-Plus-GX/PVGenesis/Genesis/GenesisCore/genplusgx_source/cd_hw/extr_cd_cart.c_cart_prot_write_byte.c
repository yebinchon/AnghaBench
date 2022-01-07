
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* memory_map; } ;
struct TYPE_7__ {unsigned int prot; } ;
struct TYPE_9__ {TYPE_2__ cartridge; } ;
struct TYPE_8__ {void* write; } ;
struct TYPE_6__ {int write16; void* write8; } ;


 void* cart_ram_write_byte ;
 int cart_ram_write_word ;
 TYPE_5__ m68k ;
 int m68k_unused_16_w ;
 void* m68k_unused_8_w ;
 TYPE_4__ scd ;
 TYPE_3__* zbank_memory_map ;
 void* zbank_unused_w ;

__attribute__((used)) static void cart_prot_write_byte(unsigned int address, unsigned int data)
{

  if (address & 1)
  {
    int i;

    if (data & 1)
    {

      for (i=0x60; i<0x70; i++)
      {
        m68k.memory_map[i].write8 = cart_ram_write_byte;
        m68k.memory_map[i].write16 = cart_ram_write_word;
        zbank_memory_map[i].write = cart_ram_write_byte;
      }
    }
    else
    {

      for (i=0x60; i<0x70; i++)
      {
        m68k.memory_map[i].write8 = m68k_unused_8_w;
        m68k.memory_map[i].write16 = m68k_unused_16_w;
        zbank_memory_map[i].write = zbank_unused_w;
      }
    }

    scd.cartridge.prot = data;
  }
}
