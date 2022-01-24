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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 int /*<<< orphan*/  EL_UIO ; 
 int P32XS_ADEN ; 
 int P32XS_nRES ; 
 TYPE_1__ Pico32x ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SekPc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(u32 a, u32 d)
{
  if ((a & 0xffc0) == 0x5100) { // a15100
    u16 *r = Pico32x.regs;

    FUNC1(EL_32X, "m68k 32x w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
    a &= 0x3f;
    if (a == 1) {
      if ((d ^ r[0]) & d & P32XS_ADEN) {
        FUNC0();
        r[0] &= ~P32XS_nRES; // causes reset if specified by this write
        r[0] |= P32XS_ADEN;
        FUNC2(a, d); // forward for reset processing
      }
      return;
    }

    // allow only COMM for now
    if ((a & 0x30) == 0x20) {
      u8 *r8 = (u8 *)r;
      r8[a ^ 1] = d;
    }
    return;
  }

  FUNC1(EL_UIO, "m68k unmapped w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
}