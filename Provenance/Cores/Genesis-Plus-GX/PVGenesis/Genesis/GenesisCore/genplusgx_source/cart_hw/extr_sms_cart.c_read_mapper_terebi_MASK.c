#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int FUNC0 () ; 
 unsigned char** z80_readmap ; 

__attribute__((used)) static unsigned char FUNC1(unsigned int address)
{
  if (address == 0x8000)
  {
    return (FUNC0() >> 8);
  }

  if (address == 0xA000)
  {
    return (FUNC0() & 0xFF);
  }

  return z80_readmap[address >> 10][address & 0x03FF];
}