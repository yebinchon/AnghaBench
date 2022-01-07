
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_14__ {TYPE_2__* memory_map; } ;
struct TYPE_13__ {TYPE_3__* memory_map; } ;
struct TYPE_8__ {int boot; } ;
struct TYPE_12__ {int * bram; int * word_ram_2M; int * word_ram; int * prg_ram; int * bootrom; TYPE_1__ cartridge; } ;
struct TYPE_11__ {int * write; int * read; } ;
struct TYPE_10__ {int * write16; int * write8; int * read16; int * read8; int * base; } ;
struct TYPE_9__ {int * write16; int * write8; int * read16; int * read8; int * base; } ;


 int * bram_read_byte ;
 int * bram_read_word ;
 int * bram_write_byte ;
 int * bram_write_word ;
 int cd_cart_init () ;
 int cdc_init () ;
 int gfx_init () ;
 TYPE_7__ m68k ;
 int * m68k_unused_16_w ;
 int * m68k_unused_8_w ;
 int memset (int *,int,int) ;
 int * prg_ram_write_byte ;
 int * prg_ram_write_word ;
 TYPE_6__ s68k ;
 int * s68k_read_bus_16 ;
 int * s68k_read_bus_8 ;
 int * s68k_unused_16_w ;
 int * s68k_unused_8_w ;
 TYPE_5__ scd ;
 int * scd_read_byte ;
 int * scd_read_word ;
 int * scd_write_byte ;
 int * scd_write_word ;
 TYPE_4__* zbank_memory_map ;
 int * zbank_unused_w ;

void scd_init(void)
{
  int i;






  uint8 base = scd.cartridge.boot;


  cd_cart_init();


  for (i=base; i<base+0x20; i++)
  {
    if (i & 2)
    {

      m68k.memory_map[i].base = scd.prg_ram + ((i & 1) << 16);
      m68k.memory_map[i].read8 = ((void*)0);
      m68k.memory_map[i].read16 = ((void*)0);
      m68k.memory_map[i].write8 = ((void*)0);
      m68k.memory_map[i].write16 = ((void*)0);
      zbank_memory_map[i].read = ((void*)0);
      zbank_memory_map[i].write = ((void*)0);

    }
    else
    {


      m68k.memory_map[i].base = scd.bootrom + ((i & 1) << 16);
      m68k.memory_map[i].read8 = ((void*)0);
      m68k.memory_map[i].read16 = ((void*)0);
      m68k.memory_map[i].write8 = m68k_unused_8_w;
      m68k.memory_map[i].write16 = m68k_unused_16_w;
      zbank_memory_map[i].read = ((void*)0);
      zbank_memory_map[i].write = zbank_unused_w;
    }
  }


  for (i=base+0x20; i<base+0x40; i++)
  {
    m68k.memory_map[i].base = scd.word_ram_2M + ((i & 3) << 16);
    m68k.memory_map[i].read8 = ((void*)0);
    m68k.memory_map[i].read16 = ((void*)0);
    m68k.memory_map[i].write8 = ((void*)0);
    m68k.memory_map[i].write16 = ((void*)0);
    zbank_memory_map[i].read = ((void*)0);
    zbank_memory_map[i].write = ((void*)0);
  }






  for (i=0x00; i<0x08; i++)
  {
    s68k.memory_map[i].base = scd.prg_ram + (i << 16);
    s68k.memory_map[i].read8 = ((void*)0);
    s68k.memory_map[i].read16 = ((void*)0);


    s68k.memory_map[i].write8 = (i < 0x02) ? prg_ram_write_byte : ((void*)0);
    s68k.memory_map[i].write16 = (i < 0x02) ? prg_ram_write_word : ((void*)0);
  }


  for (i=0x08; i<0x0c; i++)
  {
    s68k.memory_map[i].base = scd.word_ram_2M + ((i & 3) << 16);
    s68k.memory_map[i].read8 = ((void*)0);
    s68k.memory_map[i].read16 = ((void*)0);
    s68k.memory_map[i].write8 = ((void*)0);
    s68k.memory_map[i].write16 = ((void*)0);
  }


  for (i=0x0c; i<0xfd; i++)
  {
    s68k.memory_map[i].base = scd.word_ram_2M + ((i & 3) << 16);
    s68k.memory_map[i].read8 = s68k_read_bus_8;
    s68k.memory_map[i].read16 = s68k_read_bus_16;
    s68k.memory_map[i].write8 = s68k_unused_8_w;
    s68k.memory_map[i].write16 = s68k_unused_16_w;
  }


  for (i=0xfd; i<0xff; i++)
  {
    s68k.memory_map[i].base = ((void*)0);
    s68k.memory_map[i].read8 = bram_read_byte;
    s68k.memory_map[i].read16 = bram_read_word;
    s68k.memory_map[i].write8 = bram_write_byte;
    s68k.memory_map[i].write16 = bram_write_word;
  }


  s68k.memory_map[0xff].base = ((void*)0);
  s68k.memory_map[0xff].read8 = scd_read_byte;
  s68k.memory_map[0xff].read16 = scd_read_word;
  s68k.memory_map[0xff].write8 = scd_write_byte;
  s68k.memory_map[0xff].write16 = scd_write_word;


  cdc_init();
  gfx_init();


  memset(scd.prg_ram, 0x00, sizeof(scd.prg_ram));
  memset(scd.word_ram, 0x00, sizeof(scd.word_ram));
  memset(scd.word_ram_2M, 0x00, sizeof(scd.word_ram_2M));
  memset(scd.bram, 0x00, sizeof(scd.bram));
}
