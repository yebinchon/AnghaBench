#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cycles; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__ m68k ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int* zram ; 

unsigned int FUNC3(unsigned int address)
{
  switch ((address >> 13) & 3)
  {
    case 2:   /* YM2612 */
    {
      return FUNC0(m68k.cycles, address & 3);
    }

    case 3:   /* Misc  */
    {
      /* VDP (through 68k bus) */
      if ((address & 0xFF00) == 0x7F00)
      {
        return FUNC1(address);
      }
      return (FUNC2(address) | 0xFF);
    }

    default: /* ZRAM */
    {
      return zram[address & 0x1FFF];
    }
  }
}