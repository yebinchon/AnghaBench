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
struct TYPE_2__ {scalar_t__ cycles; } ;

/* Variables and functions */
 scalar_t__ SMS_CYCLE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  SYSTEM_GG ; 
 TYPE_1__ Z80 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  system_hw ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned char) ; 

void FUNC6(unsigned int port, unsigned char data)
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
          FUNC1(port, data);
          return;
        }

        FUNC5(port & 0xFF, data);
        return;
      }

      FUNC2(port & 1, data, Z80.cycles + SMS_CYCLE_OFFSET);
      return;
    }

    case 0x40:
    case 0x41:
    {
      FUNC0(Z80.cycles, data);
      return;
    }

    case 0x80:
    {
      FUNC4(data);
      return;
    }

    case 0x81:
    {
      FUNC3(data);
      return;
    }

    default:
    {
      FUNC5(port & 0xFF, data);
      return;
    }
  }
}