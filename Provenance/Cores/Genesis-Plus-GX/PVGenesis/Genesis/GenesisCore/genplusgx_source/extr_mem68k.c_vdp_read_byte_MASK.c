#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  address ;
struct TYPE_4__ {unsigned int pc; int /*<<< orphan*/  cycles; TYPE_1__* memory_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ m68k ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

unsigned int FUNC6(unsigned int address)
{
  switch (address & 0xFD)
  {
    case 0x00:  /* DATA */
    {
      return (FUNC4() >> 8);
    }

    case 0x01:  /* DATA */
    {
      return (FUNC4() & 0xFF);
    }

    case 0x04:  /* CTRL */
    {
      unsigned int data = (FUNC3(m68k.cycles) >> 8) & 3;

      /* Unused bits return prefetched bus data */
      address = m68k.pc;
      data |= (FUNC0(m68k.memory_map[((address)>>16)&0xff].base, (address) & 0xffff) & 0xFC);

      return data;
    }

    case 0x05:  /* CTRL */
    {
      return (FUNC3(m68k.cycles) & 0xFF);
    }

    case 0x08:  /* HVC */
    case 0x0C:
    {
      return (FUNC5(m68k.cycles) >> 8);
    }

    case 0x09:  /* HVC */
    case 0x0D:
    {
      return (FUNC5(m68k.cycles) & 0xFF);
    }

    case 0x18:  /* Unused */
    case 0x19:
    case 0x1C:
    case 0x1D:
    {
      return FUNC2(address);
    }

    default:    /* Invalid address */
    {
      return FUNC1(address);
    }
  }
}