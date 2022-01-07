
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zram; } ;
struct TYPE_3__ {int z80_out; int z80_in; } ;
typedef int FPTR ;


 int CZ80 ;
 int Cz80_Set_Fetch (int *,int,int,int ) ;
 int Cz80_Set_INPort (int *,int ) ;
 int Cz80_Set_OUTPort (int *,int ) ;
 TYPE_2__ Pico ;
 TYPE_1__ drZ80 ;
 scalar_t__ ym2612_read_local_z80 ;
 int z80_map_set (int ,int,int,scalar_t__,int) ;
 scalar_t__ z80_md_bank_read ;
 scalar_t__ z80_md_bank_write ;
 int z80_md_in ;
 int z80_md_out ;
 scalar_t__ z80_md_vdp_br_write ;
 scalar_t__ z80_md_vdp_read ;
 scalar_t__ z80_md_ym2612_write ;
 int z80_read_map ;
 int z80_write_map ;

__attribute__((used)) static void z80_mem_setup(void)
{
  z80_map_set(z80_read_map, 0x0000, 0x1fff, Pico.zram, 0);
  z80_map_set(z80_read_map, 0x2000, 0x3fff, Pico.zram, 0);
  z80_map_set(z80_read_map, 0x4000, 0x5fff, ym2612_read_local_z80, 1);
  z80_map_set(z80_read_map, 0x6000, 0x7fff, z80_md_vdp_read, 1);
  z80_map_set(z80_read_map, 0x8000, 0xffff, z80_md_bank_read, 1);

  z80_map_set(z80_write_map, 0x0000, 0x1fff, Pico.zram, 0);
  z80_map_set(z80_write_map, 0x2000, 0x3fff, Pico.zram, 0);
  z80_map_set(z80_write_map, 0x4000, 0x5fff, z80_md_ym2612_write, 1);
  z80_map_set(z80_write_map, 0x6000, 0x7fff, z80_md_vdp_br_write, 1);
  z80_map_set(z80_write_map, 0x8000, 0xffff, z80_md_bank_write, 1);
}
