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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char) ; 
 TYPE_1__ Z80 ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned char) ; 

void FUNC4(unsigned int port, unsigned char data)
{
  switch(port & 0xC1)
  {
    case 0x40:
    case 0x41:
    {
      FUNC0(Z80.cycles, data);
      return;
    }

    case 0x80:
    {
      FUNC2(data);
      return;
    }

    case 0x81:
    {
      FUNC1(data);
      return;
    }

    default:
    {
      FUNC3(port & 0xFF, data);
      return;
    }
  }
}