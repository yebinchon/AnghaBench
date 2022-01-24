#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  m68krcycles_done; int /*<<< orphan*/  state; int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int FUNC0 (TYPE_1__,int) ; 
 scalar_t__ FUNC1 (TYPE_1__,int) ; 
 int /*<<< orphan*/  EL_32X ; 
 int /*<<< orphan*/  EVT_RUN_END ; 
 int /*<<< orphan*/  EVT_RUN_START ; 
 int POPT_EN_DRC ; 
 int PicoOpt ; 
 int /*<<< orphan*/  SH2_STATE_RUN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static inline void FUNC5(SH2 *sh2, int m68k_cycles)
{
  int cycles, done;

  FUNC3(sh2, EVT_RUN_START);
  sh2->state |= SH2_STATE_RUN;
  cycles = FUNC0(*sh2, m68k_cycles);
  FUNC2(sh2, EL_32X, "+run %u %d @%08x",
    sh2->m68krcycles_done, cycles, sh2->pc);

  done = FUNC4(sh2, cycles, PicoOpt & POPT_EN_DRC);

  sh2->m68krcycles_done += FUNC1(*sh2, done);
  sh2->state &= ~SH2_STATE_RUN;
  FUNC3(sh2, EVT_RUN_END);
  FUNC2(sh2, EL_32X, "-run %u %d",
    sh2->m68krcycles_done, done);
}