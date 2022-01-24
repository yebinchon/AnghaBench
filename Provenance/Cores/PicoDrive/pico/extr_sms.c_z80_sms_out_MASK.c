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
struct TYPE_3__ {unsigned char io_ctl; } ;
struct TYPE_4__ {TYPE_1__ ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_IO ; 
 int POPT_EN_PSG ; 
 TYPE_2__ Pico ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned short,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 

__attribute__((used)) static void FUNC4(unsigned short a, unsigned char d)
{
  FUNC1(EL_IO, "z80 port %04x write %02x", a, d);
  a &= 0xc1;
  switch (a)
  {
    case 0x01:
      Pico.ms.io_ctl = d;
      break;

    case 0x40:
    case 0x41:
      if (PicoOpt & POPT_EN_PSG)
        FUNC0(d);
      break;

    case 0x80:
      FUNC3(d);
      break;

    case 0x81:
      FUNC2(d);
      break;
  }
}