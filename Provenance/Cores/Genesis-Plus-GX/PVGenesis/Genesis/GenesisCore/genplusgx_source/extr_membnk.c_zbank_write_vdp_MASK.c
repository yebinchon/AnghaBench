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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__ Z80 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 

void FUNC6(unsigned int address, unsigned int data)
{
  switch (address & 0xFC)
  {
    case 0x00:  /* Data port */
    {
      FUNC2(data << 8 | data);
      return;
    }

    case 0x04:  /* Control port */
    {
      FUNC1(data << 8 | data);
      return;
    }

    case 0x10:  /* PSG */
    case 0x14:
    {
      if (address & 1)
      {
        FUNC0(Z80.cycles, data);
        return;
      }
      FUNC5(address, data);
      return;
    }
             
    case 0x18: /* Unused */
    {
      FUNC5(address, data);
      return;
    }

    case 0x1C:  /* TEST register */
    {
      FUNC3(data << 8 | data);
      return;
    }

    default:  /* Invalid address */
    {
      FUNC4(address, data);
      return;
    }
  }
}