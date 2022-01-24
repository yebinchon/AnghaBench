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
typedef  int u32 ;
struct TYPE_2__ {int* pal; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 int /*<<< orphan*/  EL_UIO ; 
 int PAHW_MCD ; 
 TYPE_1__* Pico32xMem ; 
 int PicoAHW ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SekPc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int* str_mars ; 

__attribute__((used)) static u32 FUNC5(u32 a)
{
  u32 d = 0;
  if ((a & 0xffc0) == 0x5100) { // a15100
    d = FUNC3(a);
    goto out_16to8;
  }

  if ((a & 0xfc00) != 0x5000) {
    if (PicoAHW & PAHW_MCD)
      return FUNC1(a);
    else
      return FUNC0(a);
  }

  if ((a & 0xfff0) == 0x5180) { // a15180
    d = FUNC4(a);
    goto out_16to8;
  }

  if ((a & 0xfe00) == 0x5200) { // a15200
    d = Pico32xMem->pal[(a & 0x1ff) / 2];
    goto out_16to8;
  }

  if ((a & 0xfffc) == 0x30ec) { // a130ec
    d = str_mars[a & 3];
    goto out;
  }

  FUNC2(EL_UIO, "m68k unmapped r8  [%06x] @%06x", a, SekPc);
  return d;

out_16to8:
  if (a & 1)
    d &= 0xff;
  else
    d >>= 8;

out:
  FUNC2(EL_32X, "m68k 32x r8  [%06x]   %02x @%06x", a, d, SekPc);
  return d;
}