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
 TYPE_1__ m68k ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

void FUNC6(unsigned int address, unsigned int data)
{
  switch (address & 0xFC)
  {
    case 0x00:  /* DATA */
    {
      FUNC4(data);
      return;
    }

    case 0x04:  /* CTRL */
    {
      FUNC3(data);
      return;
    }

    case 0x10:  /* PSG */
    case 0x14:
    {
      FUNC0(m68k.cycles, data & 0xFF);
      return;
    }

    case 0x18:  /* Unused */
    {
      FUNC2(address, data);
      return;
    }
    
    case 0x1C:  /* Test register */
    {
      FUNC5(data);
      return;
    }

    default:  /* Invalid address */
    {
      FUNC1 (address, data);
      return;
    }
  }
}