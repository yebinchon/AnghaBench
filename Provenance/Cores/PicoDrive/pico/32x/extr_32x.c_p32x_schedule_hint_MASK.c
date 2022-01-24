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
struct TYPE_4__ {int scanline; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int* sh2irq_mask; int* sh2_regs; } ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  P32X_EVENT_HINT ; 
 TYPE_3__ Pico ; 
 TYPE_2__ Pico32x ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC2(SH2 *sh2, int m68k_cycles)
{
  // rather rough, 32x hint is useless in practice
  int after;

  if (!((Pico32x.sh2irq_mask[0] | Pico32x.sh2irq_mask[1]) & 4))
    return; // nobody cares
  // note: when Pico.m.scanline is 224, SH2s might
  // still be at scanline 93 (or so)
  if (!(Pico32x.sh2_regs[0] & 0x80) && Pico.m.scanline > 224)
    return;

  after = (Pico32x.sh2_regs[4 / 2] + 1) * 488;
  if (sh2 != NULL)
    FUNC1(sh2, P32X_EVENT_HINT, after);
  else
    FUNC0(m68k_cycles, P32X_EVENT_HINT, after);
}