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
struct TYPE_4__ {scalar_t__ cycles; } ;
struct TYPE_3__ {int ym2413; } ;

/* Variables and functions */
 scalar_t__ SMS_CYCLE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned char) ; 
 TYPE_2__ Z80 ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned char) ; 

void FUNC6(unsigned int port, unsigned char data)
{
  switch (port & 0xC1)
  {
    case 0x00:
    case 0x01:
    {
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
      if (!(port & 4) && (config.ym2413 & 1))
      {
        FUNC1(Z80.cycles, port & 3, data);
        return;
      }

      FUNC5(port & 0xFF, data);
      return;
    }
  }
}