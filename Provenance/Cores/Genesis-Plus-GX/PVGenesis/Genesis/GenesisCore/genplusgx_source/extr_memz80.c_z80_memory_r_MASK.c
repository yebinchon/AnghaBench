#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  cycles; } ;
struct TYPE_7__ {TYPE_1__* memory_map; } ;
struct TYPE_6__ {unsigned char (* read ) (unsigned int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_4__ Z80 ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_3__ m68k ; 
 unsigned char FUNC2 (unsigned int) ; 
 unsigned char FUNC3 (unsigned int) ; 
 unsigned char FUNC4 (unsigned int) ; 
 unsigned int zbank ; 
 TYPE_2__* zbank_memory_map ; 
 unsigned char* zram ; 

unsigned char FUNC5(unsigned int address)
{
  switch((address >> 13) & 7)
  {
    case 0: /* $0000-$3FFF: Z80 RAM (8K mirrored) */
    case 1:
    {
      return zram[address & 0x1FFF];
    }

    case 2: /* $4000-$5FFF: YM2612 */
    {
      return FUNC1(Z80.cycles, address & 3);
    }

    case 3: /* $7F00-$7FFF: VDP */
    {
      if ((address >> 8) == 0x7F)
      {
        return (*zbank_memory_map[0xc0].read)(address);
      }
      return FUNC4(address);
    }
      
    default: /* $8000-$FFFF: 68k bank (32K) */
    {
      address = zbank | (address & 0x7FFF);
      if (zbank_memory_map[address >> 16].read)
      {
        return (*zbank_memory_map[address >> 16].read)(address);
      }
      return FUNC0(m68k.memory_map[address >> 16].base, address & 0xFFFF);
    }
  }
}