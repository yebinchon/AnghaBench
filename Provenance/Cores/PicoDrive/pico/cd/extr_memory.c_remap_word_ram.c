
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {unsigned long* Fetch; } ;
struct TYPE_5__ {unsigned long* Fetch; } ;
struct TYPE_4__ {void** word_ram1M; void* word_ram2M; } ;


 int FAMEC_FETCHBITS ;
 int M68K_FETCHBANK1 ;
 TYPE_3__ PicoCpuFM68k ;
 TYPE_2__ PicoCpuFS68k ;
 TYPE_1__* Pico_mcd ;
 int cpu68k_map_all_ram (int,int,void*,int) ;
 int cpu68k_map_set (int ,int,int,int ,int) ;
 int * m68k_cell_read16 ;
 int * m68k_cell_read8 ;
 int * m68k_cell_write16 ;
 int * m68k_cell_write8 ;
 int m68k_read16_map ;
 int m68k_read8_map ;
 int m68k_write16_map ;
 int m68k_write8_map ;
 int * s68k_dec_read16 ;
 int * s68k_dec_read8 ;
 int ** s68k_dec_write16 ;
 int ** s68k_dec_write8 ;
 int s68k_read16_map ;
 int s68k_read8_map ;
 int s68k_write16_map ;
 int s68k_write8_map ;

__attribute__((used)) static void remap_word_ram(u32 r3)
{
  void *bank;


  if (!(r3 & 4)) {

    bank = Pico_mcd->word_ram2M;
    cpu68k_map_all_ram(0x200000, 0x23ffff, bank, 0);
    cpu68k_map_all_ram(0x080000, 0x0bffff, bank, 1);

  }
  else {
    int b0 = r3 & 1;
    int m = (r3 & 0x18) >> 3;
    bank = Pico_mcd->word_ram1M[b0];
    cpu68k_map_all_ram(0x200000, 0x21ffff, bank, 0);
    bank = Pico_mcd->word_ram1M[b0 ^ 1];
    cpu68k_map_all_ram(0x0c0000, 0x0effff, bank, 1);

    cpu68k_map_set(m68k_read8_map, 0x220000, 0x23ffff, m68k_cell_read8[b0], 1);
    cpu68k_map_set(m68k_read16_map, 0x220000, 0x23ffff, m68k_cell_read16[b0], 1);
    cpu68k_map_set(m68k_write8_map, 0x220000, 0x23ffff, m68k_cell_write8[b0], 1);
    cpu68k_map_set(m68k_write16_map, 0x220000, 0x23ffff, m68k_cell_write16[b0], 1);

    cpu68k_map_set(s68k_read8_map, 0x080000, 0x0bffff, s68k_dec_read8[b0 ^ 1], 1);
    cpu68k_map_set(s68k_read16_map, 0x080000, 0x0bffff, s68k_dec_read16[b0 ^ 1], 1);
    cpu68k_map_set(s68k_write8_map, 0x080000, 0x0bffff, s68k_dec_write8[b0 ^ 1][m], 1);
    cpu68k_map_set(s68k_write16_map, 0x080000, 0x0bffff, s68k_dec_write16[b0 ^ 1][m], 1);
  }
}
