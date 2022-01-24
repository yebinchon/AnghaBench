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
struct TYPE_2__ {int sh2irqs; int* sh2irqi; } ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 int /*<<< orphan*/  EL_32X ; 
 TYPE_1__ Pico32x ; 
 int /*<<< orphan*/  SH2_IDLE_STATES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  msh2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  ssh2 ; 

void FUNC5(SH2 *active_sh2, int m68k_cycles)
{
  int irqs, mlvl = 0, slvl = 0;
  int mrun, srun;

  if (active_sh2 != NULL)
    m68k_cycles = FUNC2(active_sh2);

  // msh2
  irqs = Pico32x.sh2irqs | Pico32x.sh2irqi[0];
  while ((irqs >>= 1))
    mlvl++;
  mlvl *= 2;

  // ssh2
  irqs = Pico32x.sh2irqs | Pico32x.sh2irqi[1];
  while ((irqs >>= 1))
    slvl++;
  slvl *= 2;

  mrun = FUNC4(&msh2, mlvl, active_sh2 == &msh2);
  if (mrun) {
    FUNC1(&msh2, SH2_IDLE_STATES, m68k_cycles);
    if (active_sh2 == &msh2)
      FUNC3(active_sh2, 1);
  }

  srun = FUNC4(&ssh2, slvl, active_sh2 == &ssh2);
  if (srun) {
    FUNC1(&ssh2, SH2_IDLE_STATES, m68k_cycles);
    if (active_sh2 == &ssh2)
      FUNC3(active_sh2, 1);
  }

  FUNC0(EL_32X, "update_irls: m %d/%d, s %d/%d", mlvl, mrun, slvl, srun);
}