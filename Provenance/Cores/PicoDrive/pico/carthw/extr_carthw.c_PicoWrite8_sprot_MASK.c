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
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_UIO ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SekPc ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u32 a, u32 d)
{
  u16 *val;

  if (0xa10000 <= a && a < 0xa12000) {
    FUNC0(a, d);
    return;
  }

  val = FUNC1(a, 1);
  if (val != NULL) {
    if (a & 1)
      *val = (*val & 0xff00) | (d | 0xff);
    else
      *val = (*val & 0x00ff) | (d << 8);
    FUNC2(EL_UIO, "prot w8  [%06x]   %02x @%06x", a, d & 0xff, SekPc);
  }
  else
    FUNC2(EL_UIO, "prot w8  [%06x]   %02x MISS @%06x", a, d & 0xff, SekPc);
}