#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint16 ;
struct TYPE_6__ {scalar_t__ rom; } ;
struct TYPE_4__ {unsigned int sda_out_adr; } ;
struct TYPE_5__ {TYPE_1__ config; } ;

/* Variables and functions */
 TYPE_3__ cart ; 
 TYPE_2__ eeprom_i2c ; 
 unsigned int FUNC0 () ; 

__attribute__((used)) static unsigned int FUNC1(unsigned int address)
{
  if (address == eeprom_i2c.config.sda_out_adr)
  {
    return (FUNC0() << 8);
  }

  if (address == (eeprom_i2c.config.sda_out_adr ^ 1))
  {
    return FUNC0();
  }

  return *(uint16 *)(cart.rom + address);
}