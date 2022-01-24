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
struct TYPE_2__ {int* fcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_1__ slot ; 
 unsigned char** z80_writemap ; 

__attribute__((used)) static void FUNC1(unsigned int address, unsigned char data)
{
  if (address == 0x3FFE)
  {
    FUNC0(1,data);
    return;
  }

  if (address == 0x7FFF)
  {
    FUNC0(2,data);
    return;
  }

  if (address == 0xBFFF)
  {
    FUNC0(3,(slot.fcr[1] & 0x30) + data);
    return;
  }

  z80_writemap[address >> 10][address & 0x03FF] = data;
}