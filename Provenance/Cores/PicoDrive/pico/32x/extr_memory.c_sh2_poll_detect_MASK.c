#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ poll_addr; int poll_cycles; scalar_t__ state; scalar_t__ poll_cnt; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 int /*<<< orphan*/  EVT_POLL_START ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(SH2 *sh2, u32 a, u32 flags, int maxcnt)
{
  int cycles_left = FUNC2(sh2);

  if (a == sh2->poll_addr && sh2->poll_cycles - cycles_left <= 10) {
    if (sh2->poll_cnt++ > maxcnt) {
      if (!(sh2->state & flags))
        FUNC0(sh2, EL_32X, "state: %02x->%02x",
          sh2->state, sh2->state | flags);

      sh2->state |= flags;
      FUNC3(sh2, 1);
      FUNC1(sh2, EVT_POLL_START);
      return;
    }
  }
  else
    sh2->poll_cnt = 0;
  sh2->poll_addr = a;
  sh2->poll_cycles = cycles_left;
}