#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {TYPE_1__ ST; } ;
struct TYPE_6__ {TYPE_2__ OPN; } ;

/* Variables and functions */
 int /*<<< orphan*/  EL_YMTIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int timer_a_next_oflow ; 
 int timer_b_next_oflow ; 
 TYPE_3__ ym2612 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static u32 FUNC3(void)
{
  int xcycles = FUNC2() << 8;

  FUNC1();

  FUNC0(EL_YMTIMER, "timer z80 read %i, sched %i, %i @ %i|%i", ym2612.OPN.ST.status,
      timer_a_next_oflow>>8, timer_b_next_oflow>>8, xcycles >> 8, (xcycles >> 8) / 228);
  return ym2612.OPN.ST.status;
}