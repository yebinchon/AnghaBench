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
 unsigned char FUNC0 (unsigned int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 () ; 
 unsigned char FUNC3 (unsigned int) ; 

unsigned char FUNC4(unsigned int port)
{
  switch (port & 0xC1)
  {
    case 0x80:
    {
      return FUNC2();
    }

    case 0x81:
    {
      return FUNC1(Z80.cycles);
    }

    case 0xC0:
    case 0xC1:
    {
      return FUNC0(port & 1);
    }

    default:
    {
      return FUNC3(port);
    }
  }
}