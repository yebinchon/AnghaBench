
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int romsize; scalar_t__ ram; scalar_t__ rom; } ;
struct TYPE_9__ {int * fetch32; int * fetch16; int * fetch8; int * checkpc; void* write32; void* write16; void* write8; void* read32; void* read16; void* read8; } ;
struct TYPE_8__ {unsigned long* Fetch; } ;
struct TYPE_7__ {unsigned long* Fetch; int write_long; int write_word; int write_byte; int read_long; int read_word; int read_byte; } ;
struct TYPE_6__ {scalar_t__ word_ram2M; scalar_t__ prg_ram; } ;


 int FAMEC_FETCHBITS ;
 int M68K_FETCHBANK1 ;
 int POPT_EN_MCD_RAMCART ;
 TYPE_5__ Pico ;
 TYPE_4__ PicoCpuCS68k ;
 TYPE_3__ PicoCpuFM68k ;
 TYPE_2__ PicoCpuFS68k ;
 int PicoMemSetup () ;
 int PicoOpt ;
 scalar_t__ PicoRead16_mcd_io ;
 scalar_t__ PicoRead8_mcd_io ;
 scalar_t__ PicoReadM68k16_ramc ;
 scalar_t__ PicoReadM68k8_ramc ;
 scalar_t__ PicoReadS68k16_bram ;
 scalar_t__ PicoReadS68k16_pr ;
 scalar_t__ PicoReadS68k8_bram ;
 scalar_t__ PicoReadS68k8_pr ;
 scalar_t__ PicoWrite16_mcd_io ;
 scalar_t__ PicoWrite8_mcd_io ;
 scalar_t__ PicoWriteM68k16_ramc ;
 scalar_t__ PicoWriteM68k8_ramc ;
 scalar_t__ PicoWriteS68k16_bram ;
 scalar_t__ PicoWriteS68k16_pr ;
 scalar_t__ PicoWriteS68k16_prgwp ;
 scalar_t__ PicoWriteS68k8_bram ;
 scalar_t__ PicoWriteS68k8_pr ;
 scalar_t__ PicoWriteS68k8_prgwp ;
 TYPE_1__* Pico_mcd ;
 int cpu68k_map_set (scalar_t__,int,int,scalar_t__,int) ;
 int m68k_mem_setup_cd () ;
 scalar_t__ m68k_read16_map ;
 scalar_t__ m68k_read8_map ;
 scalar_t__ m68k_write16_map ;
 scalar_t__ m68k_write8_map ;
 int remap_word_ram (int) ;
 int s68k_read16 ;
 scalar_t__ s68k_read16_map ;
 int s68k_read32 ;
 int s68k_read8 ;
 scalar_t__ s68k_read8_map ;
 scalar_t__ s68k_unmapped_read16 ;
 scalar_t__ s68k_unmapped_read8 ;
 scalar_t__ s68k_unmapped_write16 ;
 scalar_t__ s68k_unmapped_write8 ;
 int s68k_write16 ;
 scalar_t__ s68k_write16_map ;
 int s68k_write32 ;
 int s68k_write8 ;
 scalar_t__ s68k_write8_map ;

void PicoMemSetupCD(void)
{

  PicoMemSetup();



  if (PicoOpt & POPT_EN_MCD_RAMCART) {
    cpu68k_map_set(m68k_read8_map, 0x400000, 0x7fffff, PicoReadM68k8_ramc, 1);
    cpu68k_map_set(m68k_read16_map, 0x400000, 0x7fffff, PicoReadM68k16_ramc, 1);
    cpu68k_map_set(m68k_write8_map, 0x400000, 0x7fffff, PicoWriteM68k8_ramc, 1);
    cpu68k_map_set(m68k_write16_map, 0x400000, 0x7fffff, PicoWriteM68k16_ramc, 1);
  }


  cpu68k_map_set(m68k_read8_map, 0xa10000, 0xa1ffff, PicoRead8_mcd_io, 1);
  cpu68k_map_set(m68k_read16_map, 0xa10000, 0xa1ffff, PicoRead16_mcd_io, 1);
  cpu68k_map_set(m68k_write8_map, 0xa10000, 0xa1ffff, PicoWrite8_mcd_io, 1);
  cpu68k_map_set(m68k_write16_map, 0xa10000, 0xa1ffff, PicoWrite16_mcd_io, 1);


  cpu68k_map_set(s68k_read8_map, 0x000000, 0xffffff, s68k_unmapped_read8, 1);
  cpu68k_map_set(s68k_read16_map, 0x000000, 0xffffff, s68k_unmapped_read16, 1);
  cpu68k_map_set(s68k_write8_map, 0x000000, 0xffffff, s68k_unmapped_write8, 1);
  cpu68k_map_set(s68k_write16_map, 0x000000, 0xffffff, s68k_unmapped_write16, 1);


  cpu68k_map_set(s68k_read8_map, 0x000000, 0x07ffff, Pico_mcd->prg_ram, 0);
  cpu68k_map_set(s68k_read16_map, 0x000000, 0x07ffff, Pico_mcd->prg_ram, 0);
  cpu68k_map_set(s68k_write8_map, 0x000000, 0x07ffff, Pico_mcd->prg_ram, 0);
  cpu68k_map_set(s68k_write16_map, 0x000000, 0x07ffff, Pico_mcd->prg_ram, 0);
  cpu68k_map_set(s68k_write8_map, 0x000000, 0x01ffff, PicoWriteS68k8_prgwp, 1);
  cpu68k_map_set(s68k_write16_map, 0x000000, 0x01ffff, PicoWriteS68k16_prgwp, 1);


  cpu68k_map_set(s68k_read8_map, 0xfe0000, 0xfeffff, PicoReadS68k8_bram, 1);
  cpu68k_map_set(s68k_read16_map, 0xfe0000, 0xfeffff, PicoReadS68k16_bram, 1);
  cpu68k_map_set(s68k_write8_map, 0xfe0000, 0xfeffff, PicoWriteS68k8_bram, 1);
  cpu68k_map_set(s68k_write16_map, 0xfe0000, 0xfeffff, PicoWriteS68k16_bram, 1);


  cpu68k_map_set(s68k_read8_map, 0xff0000, 0xffffff, PicoReadS68k8_pr, 1);
  cpu68k_map_set(s68k_read16_map, 0xff0000, 0xffffff, PicoReadS68k16_pr, 1);
  cpu68k_map_set(s68k_write8_map, 0xff0000, 0xffffff, PicoWriteS68k8_pr, 1);
  cpu68k_map_set(s68k_write16_map, 0xff0000, 0xffffff, PicoWriteS68k16_pr, 1);


  remap_word_ram(1);
}
