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
struct TYPE_3__ {unsigned int sda_in_adr; int sda_in_bit; unsigned int scl_adr; int scl_bit; } ;
struct TYPE_4__ {unsigned int sda; unsigned int scl; TYPE_1__ config; } ;

/* Variables and functions */
 TYPE_2__ eeprom_i2c ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int address, unsigned int data)
{
  int do_update = 0;

  if (address == eeprom_i2c.config.sda_in_adr)
  {
    eeprom_i2c.sda = (data >> (8 + eeprom_i2c.config.sda_in_bit)) & 1;
    do_update = 1;
  }
  else if (address == (eeprom_i2c.config.sda_in_adr ^1))
  {
    eeprom_i2c.sda = (data >> eeprom_i2c.config.sda_in_bit) & 1;
    do_update = 1;
  }

  if (address == eeprom_i2c.config.scl_adr)
  {
    eeprom_i2c.scl = (data >> (8 + eeprom_i2c.config.scl_bit)) & 1;
    do_update = 1;
  }
  else if (address == (eeprom_i2c.config.scl_adr ^1))
  {
    eeprom_i2c.scl = (data >> eeprom_i2c.config.scl_bit) & 1;
    do_update = 1;
  }

  if (do_update)
  {
    FUNC0();
    return;
  }

  FUNC1(address, data);
}