
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__* word_ram1M; } ;


 TYPE_1__* Pico_mcd ;
 int cell_map (int) ;

__attribute__((used)) static u32 PicoReadM68k16_cell0(u32 a)
{
  a = (a&2) | (cell_map(a >> 2) << 2);
  return *(u16 *)(Pico_mcd->word_ram1M[0] + a);
}
