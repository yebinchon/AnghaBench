
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int T_SRAM ;
struct TYPE_10__ {TYPE_2__* memory_map; } ;
struct TYPE_6__ {int id; int mask; int prot; scalar_t__ boot; int * area; } ;
struct TYPE_9__ {TYPE_1__ cartridge; } ;
struct TYPE_8__ {void* write; void* read; } ;
struct TYPE_7__ {int write16; void* write8; int read16; void* read8; int * base; } ;


 void* cart_id_read_byte ;
 int cart_id_read_word ;
 void* cart_prot_read_byte ;
 int cart_prot_read_word ;
 void* cart_prot_write_byte ;
 int cart_prot_write_word ;
 void* cart_ram_read_byte ;
 int cart_ram_read_word ;
 void* cart_ram_write_byte ;
 int cart_ram_write_word ;
 TYPE_5__ m68k ;
 int m68k_unused_16_w ;
 void* m68k_unused_8_w ;
 int md_cart_init () ;
 int memset (int *,int,int) ;
 TYPE_4__ scd ;
 int sram ;
 TYPE_3__* zbank_memory_map ;
 void* zbank_unused_w ;

void cd_cart_init(void)
{
  int i;


  if (scd.cartridge.boot)
  {

    scd.cartridge.id = 0;
  }
  else
  {

    scd.cartridge.id = 6;
  }


  if (scd.cartridge.id)
  {

    memset(&sram, 0, sizeof (T_SRAM));


    memset(scd.cartridge.area, 0x00, sizeof(scd.cartridge.area));


    scd.cartridge.mask = (1 << (scd.cartridge.id + 13)) - 1;


    scd.cartridge.prot = 1;


    for (i=0x40; i<0x60; i++)
    {
      m68k.memory_map[i].base = ((void*)0);
      m68k.memory_map[i].read8 = cart_id_read_byte;
      m68k.memory_map[i].read16 = cart_id_read_word;
      m68k.memory_map[i].write8 = m68k_unused_8_w;
      m68k.memory_map[i].write16 = m68k_unused_16_w;
      zbank_memory_map[i].read = cart_id_read_byte;
      zbank_memory_map[i].write = zbank_unused_w;
    }


    for (i=0x60; i<0x70; i++)
    {
      m68k.memory_map[i].base = ((void*)0);
      m68k.memory_map[i].read8 = cart_ram_read_byte;
      m68k.memory_map[i].read16 = cart_ram_read_word;
      m68k.memory_map[i].write8 = cart_ram_write_byte;
      m68k.memory_map[i].write16 = cart_ram_write_word;
      zbank_memory_map[i].read = cart_ram_read_byte;
      zbank_memory_map[i].write = cart_ram_write_byte;
    }


    for (i=0x70; i<0x80; i++)
    {
      m68k.memory_map[i].base = ((void*)0);
      m68k.memory_map[i].read8 = cart_prot_read_byte;
      m68k.memory_map[i].read16 = cart_prot_read_word;
      m68k.memory_map[i].write8 = cart_prot_write_byte;
      m68k.memory_map[i].write16 = cart_prot_write_word;
      zbank_memory_map[i].read = cart_prot_read_byte;
      zbank_memory_map[i].write = cart_prot_write_byte;
    }
  }
  else
  {

    md_cart_init();


    if (!scd.cartridge.boot)
    {
      for (i=0; i<0x40; i++)
      {
        m68k.memory_map[i+0x40].base = m68k.memory_map[i].base;
        m68k.memory_map[i+0x40].read8 = m68k.memory_map[i].read8;
        m68k.memory_map[i+0x40].read16 = m68k.memory_map[i].read16;
        m68k.memory_map[i+0x40].write8 = m68k.memory_map[i].write8;
        m68k.memory_map[i+0x40].write16 = m68k.memory_map[i].write16;
        zbank_memory_map[i+0x40].read = zbank_memory_map[i].read;
        zbank_memory_map[i+0x40].write = zbank_memory_map[i].write;
      }
    }
  }
}
