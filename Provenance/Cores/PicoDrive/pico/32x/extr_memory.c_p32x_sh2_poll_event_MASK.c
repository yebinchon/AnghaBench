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
struct TYPE_5__ {int state; int m68krcycles_done; scalar_t__ poll_cnt; scalar_t__ poll_cycles; scalar_t__ poll_addr; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 int /*<<< orphan*/  EVT_POLL_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC2(SH2 *sh2, u32 flags, u32 m68k_cycles)
{
  if (sh2->state & flags) {
    FUNC0(sh2, EL_32X, "state: %02x->%02x", sh2->state,
      sh2->state & ~flags);

    if (sh2->m68krcycles_done < m68k_cycles)
      sh2->m68krcycles_done = m68k_cycles;

    FUNC1(sh2, EVT_POLL_END);
  }

  sh2->state &= ~flags;
  sh2->poll_addr = sh2->poll_cycles = sh2->poll_cnt = 0;
}