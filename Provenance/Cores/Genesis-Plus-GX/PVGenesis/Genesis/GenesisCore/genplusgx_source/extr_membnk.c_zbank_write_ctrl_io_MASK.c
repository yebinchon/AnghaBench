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
struct TYPE_5__ {int /*<<< orphan*/  (* time_w ) (unsigned int,unsigned int) ;} ;
struct TYPE_7__ {TYPE_1__ hw; } ;
struct TYPE_6__ {int bios; } ;

/* Variables and functions */
 TYPE_4__ Z80 ; 
 TYPE_3__ cart ; 
 TYPE_2__ config ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 

void FUNC7(unsigned int address, unsigned int data)
{
  switch ((address >> 8) & 0xFF)
  {
    case 0x00:  /* I/O chip */
    {
      /* get /LWR only */
      if ((address & 0xE1) == 0x01)
      {
        FUNC3((address >> 1) & 0x0F, data);
        return;
      }
      FUNC6(address, data);
      return;
    }

    case 0x11:  /* BUSREQ */
    {
      if (!(address & 1))
      {
        FUNC1(data & 1, Z80.cycles);
        return;
      }
      FUNC6(address, data);
      return;
    }

    case 0x12:  /* RESET */
    {
      if (!(address & 1))
      {
        FUNC2(data & 1, Z80.cycles);
        return;
      }
      FUNC6(address, data);
      return;
    }

    case 0x30:  /* TIME */
    {
      cart.hw.time_w(address, data);
      return;
    }

    case 0x41:  /* OS ROM */
    {
      if ((config.bios & 1) && (address & 1))
      {
        FUNC0(data & 1);
        return;
      }
      FUNC6(address, data);
      return;
    }

    case 0x10:  /* MEMORY MODE */
    case 0x20:  /* MEGA-CD */
    case 0x40:  /* TMSS */
    case 0x44:  /* RADICA */
    case 0x50:  /* SVP REGISTERS */
    {
      FUNC6(address, data);
      return;
    }

    default:  /* Invalid address */
    {
      FUNC5(address, data);
      return;
    }
  }
}