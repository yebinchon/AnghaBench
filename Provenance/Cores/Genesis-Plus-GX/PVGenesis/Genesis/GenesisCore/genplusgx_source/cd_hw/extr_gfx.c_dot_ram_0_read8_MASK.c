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
typedef  int uint8 ;
struct TYPE_2__ {int /*<<< orphan*/ * word_ram; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__ scd ; 

unsigned int FUNC1(unsigned int address)
{
  uint8 data = FUNC0(scd.word_ram[0], (address >> 1) & 0x1ffff);

  if (address & 1)
  {
    return (data & 0x0f);
  }

  return (data >> 4);
}