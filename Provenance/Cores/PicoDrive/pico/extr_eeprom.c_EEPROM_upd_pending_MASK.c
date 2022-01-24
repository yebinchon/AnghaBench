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
struct TYPE_4__ {unsigned int eeprom_status; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {unsigned int eeprom_bit_cl; unsigned int eeprom_bit_in; } ;

/* Variables and functions */
 TYPE_3__ Pico ; 
 TYPE_2__ SRam ; 

__attribute__((used)) static void FUNC0(unsigned int d)
{
  unsigned int d1, sreg = Pico.m.eeprom_status;

  sreg &= ~0xc0;

  // SCL
  d1 = (d >> SRam.eeprom_bit_cl) & 1;
  sreg |= d1 << 7;

  // SDA in
  d1 = (d >> SRam.eeprom_bit_in) & 1;
  sreg |= d1 << 6;

  Pico.m.eeprom_status = (unsigned char) sreg;
}