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
struct TYPE_3__ {unsigned int (* time_r ) (unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 TYPE_2__ cart ; 
 int FUNC0 () ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 

unsigned int FUNC5(unsigned int address)
{
  switch ((address >> 8) & 0xFF)
  {
    case 0x00:  /* I/O chip */
    {
      if (!(address & 0xE0))
      {
        return (FUNC1((address >> 1) & 0x0F));
      }
      return FUNC4(address);
    }

    case 0x11:  /* BUSACK */
    {
      if (address & 1)
      {
        return FUNC4(address);
      }
      return 0xFF;
    }

    case 0x30:  /* TIME */
    {
      if (cart.hw.time_r)
      {
        unsigned int data = cart.hw.time_r(address);
        if (address & 1)
        {
          return (data & 0xFF);
        }
        return (data >> 8);
      }
      return FUNC4(address);
    }

    case 0x41:  /* OS ROM */
    {
      if (address & 1)
      {
        return (FUNC0() | 0xFE);
      }
      return FUNC4(address);
    }

    case 0x10:  /* MEMORY MODE */
    case 0x12:  /* RESET */
    case 0x20:  /* MEGA-CD */
    case 0x40:  /* TMSS */
    case 0x44:  /* RADICA */
    case 0x50:  /* SVP REGISTERS */
    {
      return FUNC4(address);
    }

    default:  /* Invalid address */
    {
      return FUNC3(address);
    }
  }
}