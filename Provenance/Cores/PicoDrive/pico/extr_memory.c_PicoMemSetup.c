
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int romsize; scalar_t__ ram; scalar_t__ rom; } ;
struct TYPE_7__ {int * fetch32; int * fetch16; int * fetch8; int * checkpc; void* write32; void* write16; void* write8; void* read32; void* read16; void* read8; } ;
struct TYPE_6__ {unsigned long* Fetch; int write_long; int write_word; int write_byte; int read_long; int read_word; int read_byte; } ;
struct TYPE_5__ {int flags; int end; int start; int * data; } ;


 int FAMEC_FETCHBITS ;
 int M68K_FETCHBANK1 ;
 int M68K_MEM_SHIFT ;
 TYPE_4__ Pico ;
 TYPE_3__ PicoCpuCM68k ;
 TYPE_2__ PicoCpuFM68k ;
 scalar_t__ PicoRead16_io ;
 scalar_t__ PicoRead16_sram ;
 scalar_t__ PicoRead16_vdp ;
 scalar_t__ PicoRead16_z80 ;
 scalar_t__ PicoRead8_io ;
 scalar_t__ PicoRead8_sram ;
 scalar_t__ PicoRead8_vdp ;
 scalar_t__ PicoRead8_z80 ;
 scalar_t__ PicoWrite16_io ;
 scalar_t__ PicoWrite16_sram ;
 scalar_t__ PicoWrite16_vdp ;
 scalar_t__ PicoWrite16_z80 ;
 scalar_t__ PicoWrite8_io ;
 scalar_t__ PicoWrite8_sram ;
 scalar_t__ PicoWrite8_vdp ;
 scalar_t__ PicoWrite8_z80 ;
 int SRF_ENABLED ;
 TYPE_1__ SRam ;
 int cpu68k_map_set (scalar_t__,int,int,scalar_t__,int) ;
 int m68k_mem_setup () ;
 int m68k_read16 ;
 scalar_t__ m68k_read16_map ;
 int m68k_read32 ;
 int m68k_read8 ;
 scalar_t__ m68k_read8_map ;
 scalar_t__ m68k_unmapped_read16 ;
 scalar_t__ m68k_unmapped_read8 ;
 scalar_t__ m68k_unmapped_write16 ;
 scalar_t__ m68k_unmapped_write8 ;
 int m68k_write16 ;
 scalar_t__ m68k_write16_map ;
 int m68k_write32 ;
 int m68k_write8 ;
 scalar_t__ m68k_write8_map ;
 int z80_mem_setup () ;

void PicoMemSetup(void)
{
  int mask, rs, a;


  cpu68k_map_set(m68k_read8_map, 0x000000, 0xffffff, m68k_unmapped_read8, 1);
  cpu68k_map_set(m68k_read16_map, 0x000000, 0xffffff, m68k_unmapped_read16, 1);
  cpu68k_map_set(m68k_write8_map, 0x000000, 0xffffff, m68k_unmapped_write8, 1);
  cpu68k_map_set(m68k_write16_map, 0x000000, 0xffffff, m68k_unmapped_write16, 1);



  mask = (1 << M68K_MEM_SHIFT) - 1;
  rs = (Pico.romsize + mask) & ~mask;
  cpu68k_map_set(m68k_read8_map, 0x000000, rs - 1, Pico.rom, 0);
  cpu68k_map_set(m68k_read16_map, 0x000000, rs - 1, Pico.rom, 0);


  if ((SRam.flags & SRF_ENABLED) && SRam.data != ((void*)0)) {
    rs = SRam.end - SRam.start;
    rs = (rs + mask) & ~mask;
    if (SRam.start + rs >= 0x1000000)
      rs = 0x1000000 - SRam.start;
    cpu68k_map_set(m68k_read8_map, SRam.start, SRam.start + rs - 1, PicoRead8_sram, 1);
    cpu68k_map_set(m68k_read16_map, SRam.start, SRam.start + rs - 1, PicoRead16_sram, 1);
    cpu68k_map_set(m68k_write8_map, SRam.start, SRam.start + rs - 1, PicoWrite8_sram, 1);
    cpu68k_map_set(m68k_write16_map, SRam.start, SRam.start + rs - 1, PicoWrite16_sram, 1);
  }


  cpu68k_map_set(m68k_read8_map, 0xa00000, 0xa0ffff, PicoRead8_z80, 1);
  cpu68k_map_set(m68k_read16_map, 0xa00000, 0xa0ffff, PicoRead16_z80, 1);
  cpu68k_map_set(m68k_write8_map, 0xa00000, 0xa0ffff, PicoWrite8_z80, 1);
  cpu68k_map_set(m68k_write16_map, 0xa00000, 0xa0ffff, PicoWrite16_z80, 1);


  cpu68k_map_set(m68k_read8_map, 0xa10000, 0xa1ffff, PicoRead8_io, 1);
  cpu68k_map_set(m68k_read16_map, 0xa10000, 0xa1ffff, PicoRead16_io, 1);
  cpu68k_map_set(m68k_write8_map, 0xa10000, 0xa1ffff, PicoWrite8_io, 1);
  cpu68k_map_set(m68k_write16_map, 0xa10000, 0xa1ffff, PicoWrite16_io, 1);


  for (a = 0xc00000; a < 0xe00000; a += 0x010000) {
    if ((a & 0xe700e0) != 0xc00000)
      continue;
    cpu68k_map_set(m68k_read8_map, a, a + 0xffff, PicoRead8_vdp, 1);
    cpu68k_map_set(m68k_read16_map, a, a + 0xffff, PicoRead16_vdp, 1);
    cpu68k_map_set(m68k_write8_map, a, a + 0xffff, PicoWrite8_vdp, 1);
    cpu68k_map_set(m68k_write16_map, a, a + 0xffff, PicoWrite16_vdp, 1);
  }


  for (a = 0xe00000; a < 0x1000000; a += 0x010000) {
    cpu68k_map_set(m68k_read8_map, a, a + 0xffff, Pico.ram, 0);
    cpu68k_map_set(m68k_read16_map, a, a + 0xffff, Pico.ram, 0);
    cpu68k_map_set(m68k_write8_map, a, a + 0xffff, Pico.ram, 0);
    cpu68k_map_set(m68k_write16_map, a, a + 0xffff, Pico.ram, 0);
  }
  z80_mem_setup();
}
