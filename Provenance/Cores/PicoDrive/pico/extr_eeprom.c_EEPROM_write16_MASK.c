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
struct TYPE_3__ {int eeprom_status; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EL_EEPROM ; 
 TYPE_2__ Pico ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int last_write ; 

void FUNC4(unsigned int d)
{
  // this diff must be at most 16 for NBA Jam to work
  if (FUNC2() - last_write < 16) {
    // just update pending state
    FUNC3(EL_EEPROM, "eeprom: skip because cycles=%i",
        FUNC2() - last_write);
    FUNC0(d);
  } else {
    int srs = Pico.m.eeprom_status;
    FUNC1(srs >> 6); // execute pending
    FUNC0(d);
    if ((srs ^ Pico.m.eeprom_status) & 0xc0) // update time only if SDA/SCL changed
      last_write = FUNC2();
  }
}