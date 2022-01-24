#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_CDREGS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SekPc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

u32 FUNC3(u32 a)
{
  u32 d;
  if ((a & 0xff00) == 0x2000) { // a12000 - a120ff
    d = FUNC2(a); // TODO: m68k_reg_read8
    if (!(a & 1))
      d >>= 8;
    d &= 0xff;
    FUNC1(EL_CDREGS, "m68k_regs r8:  [%02x]   %02x @%06x",
      a & 0x3f, d, SekPc);
    return d;
  }

  // fallback to default MD handler
  return FUNC0(a);
}