
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {TYPE_1__* memory_map; } ;
struct TYPE_3__ {scalar_t__ base; int (* read16 ) (int) ;} ;


 int dma_src ;
 TYPE_2__ m68k ;
 int* reg ;
 int stub1 (int) ;
 int vdp_bus_w (int ) ;

__attribute__((used)) static void vdp_dma_68k_ext(unsigned int length)
{
  uint16 data;


  uint32 source = (reg[23] << 17) | (dma_src << 1);

  do
  {

    if (m68k.memory_map[source>>16].read16)
    {
      data = m68k.memory_map[source>>16].read16(source);
    }
    else
    {
      data = *(uint16 *)(m68k.memory_map[source>>16].base + (source & 0xFFFF));
    }


    source += 2;


    source = (reg[23] << 17) | (source & 0x1FFFF);


    vdp_bus_w(data);
  }
  while (--length);


  dma_src = (source >> 1) & 0xffff;
}
