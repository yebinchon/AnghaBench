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
struct TYPE_4__ {int /*<<< orphan*/  cycles; } ;
struct TYPE_3__ {int ym2413; } ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned int) ; 
 TYPE_2__ Z80 ; 
 TYPE_1__ config ; 
 int* io_reg ; 
 unsigned char FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 () ; 
 unsigned char FUNC5 (unsigned int) ; 

unsigned char FUNC6(unsigned int port)
{
  switch (port & 0xC1)
  {
    case 0x00:
    case 0x01:
    {
      return FUNC5(port & 0xFF);
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
      /* read FM chip if enabled */
      if (!(port & 4) && (config.ym2413 & 1))
      {
        /* check if I/O ports are disabled */
        if (io_reg[0x0E] & 0x04)
        {
          return FUNC0(port & 3);
        }
        else
        {
          return FUNC0(port & 3) & FUNC1(port & 1);
        }
      }

      /* check if I/O ports are enabled */
      if (!(io_reg[0x0E] & 0x04))
      {
        return FUNC1(port & 1);
      }

      return FUNC5(port & 0xFF);
    }
  }
}