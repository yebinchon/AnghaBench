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
struct TYPE_2__ {int cycles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__ m68k ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 unsigned int* zram ; 

void FUNC4(unsigned int address, unsigned int data)
{
  switch ((address >> 13) & 3)
  {
    case 2: /* YM2612 */
    {
      FUNC0(m68k.cycles, address & 3, data);
      return;
    }

    case 3:
    {
      switch ((address >> 8) & 0x7F)
      {
        case 0x60:  /* Bank register */
        {
          FUNC1(data & 1);
          return;
        }

        case 0x7F:  /* VDP */
        {
          FUNC2(address, data);
          return;
        }
      
        default:
        {
          FUNC3(address, data);
          return;
        }
      }
    }
      
    default: /* ZRAM */
    {
      zram[address & 0x1FFF] = data;
      m68k.cycles += 8; /* ZRAM access latency (fixes Pacman 2: New Adventures) */
      return;
    }
  }
}