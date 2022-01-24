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
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 int /*<<< orphan*/  EL_UIO ; 
 TYPE_1__ Pico32x ; 
 int /*<<< orphan*/  SekPc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int* str_mars ; 

u32 FUNC1(u32 a)
{
  u32 d = 0;
  if ((a & 0xffc0) == 0x5100) { // a15100
    // regs are always readable
    d = ((u8 *)Pico32x.regs)[(a & 0x3f) ^ 1];
    goto out;
  }

  if ((a & 0xfffc) == 0x30ec) { // a130ec
    d = str_mars[a & 3];
    goto out;
  }

  FUNC0(EL_UIO, "m68k unmapped r8  [%06x] @%06x", a, SekPc);
  return d;

out:
  FUNC0(EL_32X, "m68k 32x r8  [%06x]   %02x @%06x", a, d, SekPc);
  return d;
}