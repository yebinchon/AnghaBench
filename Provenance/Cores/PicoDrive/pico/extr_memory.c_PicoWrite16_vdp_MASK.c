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
 int EL_ANOMALY ; 
 int EL_UIO ; 
 int POPT_EN_PSG ; 
 int PicoOpt ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SekPc ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(u32 a, u32 d)
{
  if ((a & 0x00f9) == 0x0010) { // PSG Sound
    if (PicoOpt & POPT_EN_PSG)
      FUNC1(d);
    return;
  }
  if ((a & 0x00e0) == 0x0000) {
    FUNC0(a, d);
    return;
  }

  FUNC2(EL_UIO|EL_ANOMALY, "68k bad write [%06x] %04x @%06x", a, d & 0xffff, SekPc);
}