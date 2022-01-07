
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dmna_ret_2m; unsigned short hint_vector; int busreq; } ;
struct TYPE_4__ {int* s68k_regs; TYPE_1__ m; scalar_t__ bios; int word_ram2M; } ;


 TYPE_2__* Pico_mcd ;
 int remap_prg_window (int ,int) ;
 int remap_word_ram (int) ;
 int wram_2M_to_1M (int ) ;

void pcd_state_loaded_mem(void)
{
  u32 r3 = Pico_mcd->s68k_regs[3];


  if (r3 & 4)
    wram_2M_to_1M(Pico_mcd->word_ram2M);
  remap_word_ram(r3);
  remap_prg_window(Pico_mcd->m.busreq, r3);
  Pico_mcd->m.dmna_ret_2m &= 3;


  *(unsigned short *)(Pico_mcd->bios + 0x72) = Pico_mcd->m.hint_vector;
}
