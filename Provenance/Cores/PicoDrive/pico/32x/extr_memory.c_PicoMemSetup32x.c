
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_24__ ;
typedef struct TYPE_29__ TYPE_22__ ;
typedef struct TYPE_28__ TYPE_20__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_16__ ;


struct TYPE_32__ {int mask; void* addr; } ;
struct TYPE_31__ {void const** write8_tab; void const** write16_tab; TYPE_16__* read16_map; TYPE_3__* read8_map; } ;
struct TYPE_27__ {int ncart_in; } ;
struct TYPE_30__ {unsigned int romsize; scalar_t__ rom; TYPE_1__ m; } ;
struct TYPE_29__ {unsigned long* Fetch; } ;
struct TYPE_28__ {scalar_t__ sdram; scalar_t__ m68k_rom; scalar_t__ m68k_rom_bank; } ;
struct TYPE_26__ {int mask; void* addr; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int EL_STATUS ;
 unsigned int M68K_BANK_MASK ;
 void* MAP_HANDLER (int ) ;
 void* MAP_MEMORY (scalar_t__) ;
 TYPE_24__ Pico ;
 TYPE_20__* Pico32xMem ;
 int Pico32xSwapDRAM (int) ;
 TYPE_22__ PicoCpuFM68k ;
 scalar_t__ PicoRead16_32x_on ;
 scalar_t__ PicoRead8_32x_on ;
 scalar_t__ PicoWrite16_32x_on ;
 scalar_t__ PicoWrite16_bank ;
 scalar_t__ PicoWrite16_cart ;
 scalar_t__ PicoWrite16_hint ;
 scalar_t__ PicoWrite8_32x_on ;
 scalar_t__ PicoWrite8_bank ;
 scalar_t__ PicoWrite8_cart ;
 scalar_t__ PicoWrite8_hint ;
 int bank_switch (int ) ;
 int cpu68k_map_set (int ,int,int,scalar_t__,int) ;
 int elprintf (int ,char*) ;
 int get_bios () ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int m68k_write16_map ;
 int m68k_write8_map ;
 TYPE_2__ msh2 ;
 TYPE_20__* plat_mmap (int,int,int ,int ) ;
 int sh2_drc_mem_setup (TYPE_2__*) ;
 int sh2_peripheral_read16 ;
 int sh2_peripheral_read8 ;
 TYPE_3__ sh2_peripheral_write16 ;
 TYPE_3__ sh2_peripheral_write8 ;
 int sh2_read16_cs0 ;
 int sh2_read16_da ;
 TYPE_16__* sh2_read16_map ;
 int sh2_read16_unmapped ;
 int sh2_read8_cs0 ;
 int sh2_read8_da ;
 TYPE_3__* sh2_read8_map ;
 int sh2_read8_unmapped ;
 TYPE_3__ sh2_write16_cs0 ;
 TYPE_3__ sh2_write16_da ;
 TYPE_3__* sh2_write16_map ;
 TYPE_3__ sh2_write16_sdram ;
 TYPE_3__ sh2_write16_unmapped ;
 TYPE_3__ sh2_write8_cs0 ;
 TYPE_3__ sh2_write8_da ;
 TYPE_3__* sh2_write8_map ;
 TYPE_3__ sh2_write8_sdram ;
 TYPE_3__ sh2_write8_sdram_wt ;
 TYPE_3__ sh2_write8_unmapped ;
 TYPE_3__ sh2_write_ignore ;
 TYPE_2__ ssh2 ;
 int z80_map_set (int ,int,int,int ,int) ;
 int z80_md_bank_write_32x ;
 int z80_write_map ;

void PicoMemSetup32x(void)
{
  unsigned int rs;
  int i;

  Pico32xMem = plat_mmap(0x06000000, sizeof(*Pico32xMem), 0, 0);
  if (Pico32xMem == ((void*)0)) {
    elprintf(EL_STATUS, "OOM");
    return;
  }

  get_bios();






  if (!Pico.m.ncart_in) {

    rs = sizeof(Pico32xMem->m68k_rom_bank);
    cpu68k_map_set(m68k_read8_map, 0x000000, rs - 1, Pico32xMem->m68k_rom_bank, 0);
    cpu68k_map_set(m68k_read16_map, 0x000000, rs - 1, Pico32xMem->m68k_rom_bank, 0);
    cpu68k_map_set(m68k_write8_map, 0x000000, rs - 1, PicoWrite8_hint, 1);
    cpu68k_map_set(m68k_write16_map, 0x000000, rs - 1, PicoWrite16_hint, 1);


    rs = (Pico.romsize + M68K_BANK_MASK) & ~M68K_BANK_MASK;
    if (rs > 0x80000)
      rs = 0x80000;
    cpu68k_map_set(m68k_read8_map, 0x880000, 0x880000 + rs - 1, Pico.rom, 0);
    cpu68k_map_set(m68k_read16_map, 0x880000, 0x880000 + rs - 1, Pico.rom, 0);
    cpu68k_map_set(m68k_write8_map, 0x880000, 0x880000 + rs - 1, PicoWrite8_cart, 1);
    cpu68k_map_set(m68k_write16_map, 0x880000, 0x880000 + rs - 1, PicoWrite16_cart, 1);
    bank_switch(0);
    cpu68k_map_set(m68k_write8_map, 0x900000, 0x9fffff, PicoWrite8_bank, 1);
    cpu68k_map_set(m68k_write16_map, 0x900000, 0x9fffff, PicoWrite16_bank, 1);
  }


  cpu68k_map_set(m68k_read8_map, 0xa10000, 0xa1ffff, PicoRead8_32x_on, 1);
  cpu68k_map_set(m68k_read16_map, 0xa10000, 0xa1ffff, PicoRead16_32x_on, 1);
  cpu68k_map_set(m68k_write8_map, 0xa10000, 0xa1ffff, PicoWrite8_32x_on, 1);
  cpu68k_map_set(m68k_write16_map, 0xa10000, 0xa1ffff, PicoWrite16_32x_on, 1);



  for (i = 0; i < ARRAY_SIZE(sh2_read8_map); i++) {
    sh2_read8_map[i].addr = MAP_HANDLER(sh2_read8_unmapped);
    sh2_read16_map[i].addr = MAP_HANDLER(sh2_read16_unmapped);
  }

  for (i = 0; i < ARRAY_SIZE(sh2_write8_map); i++) {
    sh2_write8_map[i] = sh2_write8_unmapped;
    sh2_write16_map[i] = sh2_write16_unmapped;
  }


  for (i = 0x40; i <= 0x5f; i++) {
    sh2_write8_map[i >> 1] =
    sh2_write16_map[i >> 1] = sh2_write_ignore;
  }


  sh2_read8_map[0x00/2].addr = sh2_read8_map[0x20/2].addr = MAP_HANDLER(sh2_read8_cs0);
  sh2_read16_map[0x00/2].addr = sh2_read16_map[0x20/2].addr = MAP_HANDLER(sh2_read16_cs0);
  sh2_write8_map[0x00/2] = sh2_write8_map[0x20/2] = sh2_write8_cs0;
  sh2_write16_map[0x00/2] = sh2_write16_map[0x20/2] = sh2_write16_cs0;

  sh2_read8_map[0x02/2].addr = sh2_read8_map[0x22/2].addr =
  sh2_read16_map[0x02/2].addr = sh2_read16_map[0x22/2].addr = MAP_MEMORY(Pico.rom);
  sh2_read8_map[0x02/2].mask = sh2_read8_map[0x22/2].mask =
  sh2_read16_map[0x02/2].mask = sh2_read16_map[0x22/2].mask = 0x3fffff;

  sh2_read8_map[0x04/2].mask = sh2_read8_map[0x24/2].mask =
  sh2_read16_map[0x04/2].mask = sh2_read16_map[0x24/2].mask = 0x01ffff;

  sh2_read8_map[0x06/2].addr = sh2_read8_map[0x26/2].addr =
  sh2_read16_map[0x06/2].addr = sh2_read16_map[0x26/2].addr = MAP_MEMORY(Pico32xMem->sdram);
  sh2_write8_map[0x06/2] = sh2_write8_sdram;
  sh2_write8_map[0x26/2] = sh2_write8_sdram_wt;
  sh2_write16_map[0x06/2] = sh2_write16_map[0x26/2] = sh2_write16_sdram;
  sh2_read8_map[0x06/2].mask = sh2_read8_map[0x26/2].mask =
  sh2_read16_map[0x06/2].mask = sh2_read16_map[0x26/2].mask = 0x03ffff;

  sh2_read8_map[0xc0/2].addr = MAP_HANDLER(sh2_read8_da);
  sh2_read16_map[0xc0/2].addr = MAP_HANDLER(sh2_read16_da);
  sh2_write8_map[0xc0/2] = sh2_write8_da;
  sh2_write16_map[0xc0/2] = sh2_write16_da;

  sh2_read8_map[0xff/2].addr = MAP_HANDLER(sh2_peripheral_read8);
  sh2_read16_map[0xff/2].addr = MAP_HANDLER(sh2_peripheral_read16);
  sh2_write8_map[0xff/2] = sh2_peripheral_write8;
  sh2_write16_map[0xff/2] = sh2_peripheral_write16;


  Pico32xSwapDRAM(1);

  msh2.read8_map = ssh2.read8_map = sh2_read8_map;
  msh2.read16_map = ssh2.read16_map = sh2_read16_map;
  msh2.write8_tab = ssh2.write8_tab = (const void **)(void *)sh2_write8_map;
  msh2.write16_tab = ssh2.write16_tab = (const void **)(void *)sh2_write16_map;

  sh2_drc_mem_setup(&msh2);
  sh2_drc_mem_setup(&ssh2);


  z80_map_set(z80_write_map, 0x8000, 0xffff, z80_md_bank_write_32x, 1);
}
