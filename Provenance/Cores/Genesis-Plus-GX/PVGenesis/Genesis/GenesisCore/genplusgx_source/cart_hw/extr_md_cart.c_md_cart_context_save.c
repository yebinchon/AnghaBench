
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8 ;
typedef int ssp1601_t ;
struct TYPE_8__ {int * regs; } ;
struct TYPE_12__ {int* rom; TYPE_2__ hw; } ;
struct TYPE_11__ {TYPE_1__* memory_map; } ;
struct TYPE_10__ {int* sram; } ;
struct TYPE_9__ {int ssp1601; int * dram; int * iram_rom; } ;
struct TYPE_7__ {int* base; } ;


 TYPE_6__ cart ;
 TYPE_5__ m68k ;
 int save_param (int *,int) ;
 TYPE_4__ sram ;
 TYPE_3__* svp ;

int md_cart_context_save(uint8 *state)
{
  int i;
  int bufferptr = 0;
  uint8 *base;


  for (i=0; i<0x40; i++)
  {

    base = m68k.memory_map[i].base;

    if (base == sram.sram)
    {

      state[bufferptr++] = 0xff;
    }
    else
    {

      state[bufferptr++] = ((base - cart.rom) >> 16) & 0xff;
    }
  }


  save_param(cart.hw.regs, sizeof(cart.hw.regs));


  if (svp)
  {
    save_param(svp->iram_rom, 0x800);
    save_param(svp->dram,sizeof(svp->dram));
    save_param(&svp->ssp1601,sizeof(ssp1601_t));
  }

  return bufferptr;
}
