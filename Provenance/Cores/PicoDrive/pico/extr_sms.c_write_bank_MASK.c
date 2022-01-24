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
struct TYPE_3__ {unsigned char* carthw; } ;
struct TYPE_4__ {TYPE_1__ ms; int /*<<< orphan*/  rom; } ;
typedef  int /*<<< orphan*/  FPTR ;

/* Variables and functions */
 int /*<<< orphan*/  CZ80 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int EL_ANOMALY ; 
 int EL_STATUS ; 
 int /*<<< orphan*/  EL_Z80BNK ; 
 TYPE_2__ Pico ; 
 unsigned char bank_mask ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  z80_read_map ; 

__attribute__((used)) static void FUNC4(unsigned short a, unsigned char d)
{
  FUNC1(EL_Z80BNK, "bank %04x %02x @ %04x", a, d, FUNC3());
  switch (a & 0x0f)
  {
    case 0x0c:
      FUNC1(EL_STATUS|EL_ANOMALY, "%02x written to control reg!", d);
      break;
    case 0x0d:
      if (d != 0)
        FUNC1(EL_STATUS|EL_ANOMALY, "bank0 changed to %d!", d);
      break;
    case 0x0e:
      d &= bank_mask;
      FUNC2(z80_read_map, 0x4000, 0x7fff, Pico.rom + (d << 14), 0);
#ifdef _USE_CZ80
      Cz80_Set_Fetch(&CZ80, 0x4000, 0x7fff, (FPTR)Pico.rom + (d << 14));
#endif
      break;
    case 0x0f:
      d &= bank_mask;
      FUNC2(z80_read_map, 0x8000, 0xbfff, Pico.rom + (d << 14), 0);
#ifdef _USE_CZ80
      Cz80_Set_Fetch(&CZ80, 0x8000, 0xbfff, (FPTR)Pico.rom + (d << 14));
#endif
      break;
  }
  Pico.ms.carthw[a & 0x0f] = d;
}