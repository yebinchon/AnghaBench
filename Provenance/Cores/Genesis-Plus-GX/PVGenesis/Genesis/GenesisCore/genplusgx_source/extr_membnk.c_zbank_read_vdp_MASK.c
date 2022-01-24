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
 TYPE_1__ Z80 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 

unsigned int FUNC5(unsigned int address)
{
  switch (address & 0xFD)
  {
    case 0x00:    /* DATA */
    {
      return (FUNC1() >> 8);
    }
      
    case 0x01:    /* DATA */
    {
      return (FUNC1() & 0xFF);
    }
      
    case 0x04:    /* CTRL */
    {
      return (((FUNC0(Z80.cycles) >> 8) & 3) | 0xFC);
    }

    case 0x05:    /* CTRL */
    {
      return (FUNC0(Z80.cycles) & 0xFF);
    }
      
    case 0x08:    /* HVC */
    case 0x0C:
    {
      return (FUNC2(Z80.cycles) >> 8);
    }

    case 0x09:    /* HVC */
    case 0x0D:
    {
      return (FUNC2(Z80.cycles) & 0xFF);
    }

    case 0x18:    /* Unused */
    case 0x19:
    case 0x1C:
    case 0x1D:
    {
      return FUNC4(address);
    }

    default:    /* Invalid address */
    {
      return FUNC3(address);
    }
  }
}