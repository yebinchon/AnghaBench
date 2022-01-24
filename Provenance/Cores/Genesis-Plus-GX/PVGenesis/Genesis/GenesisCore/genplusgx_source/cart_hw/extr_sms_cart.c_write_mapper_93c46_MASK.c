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
struct TYPE_2__ {unsigned char enabled; } ;

/* Variables and functions */
 TYPE_1__ eeprom_93c ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned char) ; 
 unsigned char** z80_writemap ; 

__attribute__((used)) static void FUNC3(unsigned int address, unsigned char data)
{
  /* EEPROM serial input */
  if ((address == 0x8000) && eeprom_93c.enabled)
  {
    FUNC1(data);
    return;
  }

  /* EEPROM ctrl */
  if (address == 0xFFFC)
  {
    /* enable/disable EEPROM */
    eeprom_93c.enabled = data & 0x08;

    if (data & 0x80)
    {
      /* reset EEPROM */
      FUNC0();
    }
  }

  /* SEGA mapper compatibility */
  if (address > 0xFFFC)
  {
    FUNC2(address & 3, data);
  }

  z80_writemap[address >> 10][address & 0x03FF] = data;
}