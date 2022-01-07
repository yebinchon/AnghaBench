
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {void** prg_ram_b; } ;


 TYPE_1__* Pico_mcd ;
 int cpu68k_map_all_ram (int,int,void*,int ) ;
 int m68k_map_unmap (int,int) ;

__attribute__((used)) static void remap_prg_window(u32 r1, u32 r3)
{

  if (r1 & 2) {
    void *bank = Pico_mcd->prg_ram_b[(r3 >> 6) & 3];
    cpu68k_map_all_ram(0x020000, 0x03ffff, bank, 0);
  }
  else {
    m68k_map_unmap(0x020000, 0x03ffff);
  }
}
