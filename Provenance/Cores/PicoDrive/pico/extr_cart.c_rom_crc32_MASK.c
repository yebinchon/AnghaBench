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
struct TYPE_2__ {int /*<<< orphan*/  romsize; int /*<<< orphan*/  rom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EL_STATUS ; 
 TYPE_1__ Pico ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static unsigned int FUNC3(void)
{
  unsigned int crc;
  FUNC2(EL_STATUS, "caclulating CRC32..");

  // have to unbyteswap for calculation..
  FUNC0(Pico.rom, Pico.rom, Pico.romsize);
  crc = FUNC1(0, Pico.rom, Pico.romsize);
  FUNC0(Pico.rom, Pico.rom, Pico.romsize);
  return crc;
}