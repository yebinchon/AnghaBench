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
 int /*<<< orphan*/  SYSTEM_GG ; 
 TYPE_1__ Z80 ; 
 unsigned char FUNC0 (unsigned int) ; 
 unsigned char FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  system_hw ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 () ; 
 unsigned char FUNC5 (unsigned int) ; 

unsigned char FUNC6(unsigned int port)
{
  switch(port & 0xC1)
  {
    case 0x00:
    case 0x01:
    {
      port &= 0xFF;

      if (port < 0x07)
      {
        if (system_hw == SYSTEM_GG)
        {
          return FUNC0(port);
        }
      }

      return FUNC5(port);
    }

    case 0x40:
    {
      return ((FUNC2(Z80.cycles) >> 8) & 0xFF);
    }

    case 0x41:
    {
      return (FUNC2(Z80.cycles) & 0xFF);
    }

    case 0x80:
    {
      return FUNC4();
    }

    case 0x81:
    {
      return FUNC3(Z80.cycles);
    }

    default:
    {
      port &= 0xFF;

      if ((port == 0xC0) || (port == 0xC1) || (port == 0xDC) || (port == 0xDD))
      {
        return FUNC1(port & 1);
      }

      return FUNC5(port);
    }
  }
}