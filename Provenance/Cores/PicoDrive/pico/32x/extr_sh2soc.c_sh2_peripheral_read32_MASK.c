#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int* peri_regs; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32XP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

u32 FUNC2(u32 a, SH2 *sh2)
{
  u32 d;
  a &= 0x1fc;
  d = sh2->peri_regs[a / 4];

  FUNC0(sh2, EL_32XP, "peri r32 [%08x] %08x @%06x",
    a | ~0x1ff, d, FUNC1(sh2));
  return d;
}