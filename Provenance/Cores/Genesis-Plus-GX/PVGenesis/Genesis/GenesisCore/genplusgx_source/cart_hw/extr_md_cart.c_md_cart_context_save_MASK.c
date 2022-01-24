#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  ssp1601_t ;
struct TYPE_8__ {int /*<<< orphan*/ * regs; } ;
struct TYPE_12__ {int* rom; TYPE_2__ hw; } ;
struct TYPE_11__ {TYPE_1__* memory_map; } ;
struct TYPE_10__ {int* sram; } ;
struct TYPE_9__ {int /*<<< orphan*/  ssp1601; int /*<<< orphan*/ * dram; int /*<<< orphan*/ * iram_rom; } ;
struct TYPE_7__ {int* base; } ;

/* Variables and functions */
 TYPE_6__ cart ; 
 TYPE_5__ m68k ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__ sram ; 
 TYPE_3__* svp ; 

int FUNC1(uint8 *state)
{
  int i;
  int bufferptr = 0;
  uint8 *base;

  /* cartridge mapping */
  for (i=0; i<0x40; i++)
  {
    /* get base address */
    base = m68k.memory_map[i].base;
      
    if (base == sram.sram)
    {
      /* SRAM */
      state[bufferptr++] = 0xff;
    }
    else
    {
      /* ROM */
      state[bufferptr++] = ((base - cart.rom) >> 16) & 0xff;
    }
  }

  /* hardware registers */
  FUNC0(cart.hw.regs, sizeof(cart.hw.regs));

  /* SVP */
  if (svp)
  {
    FUNC0(svp->iram_rom, 0x800);
    FUNC0(svp->dram,sizeof(svp->dram));
    FUNC0(&svp->ssp1601,sizeof(ssp1601_t));
  }

  return bufferptr;
}