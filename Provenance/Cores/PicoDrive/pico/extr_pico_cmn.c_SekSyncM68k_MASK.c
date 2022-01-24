#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cycles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EVT_RUN_END ; 
 int /*<<< orphan*/  EVT_RUN_START ; 
 TYPE_1__ PicoCpuCM68k ; 
 int SekCycleAim ; 
 int SekCycleCnt ; 
 scalar_t__ SekCyclesLeft ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m68k ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
  int cyc_do;
  FUNC6(m68k);
  FUNC4(EVT_RUN_START);

  while ((cyc_do = SekCycleAim - SekCycleCnt) > 0) {
    SekCycleCnt += cyc_do;

#if defined(EMU_C68K)
    PicoCpuCM68k.cycles = cyc_do;
    CycloneRun(&PicoCpuCM68k);
    SekCycleCnt -= PicoCpuCM68k.cycles;
#elif defined(EMU_M68K)
    SekCycleCnt += m68k_execute(cyc_do) - cyc_do;
#elif defined(EMU_F68K)
    SekCycleCnt += fm68k_emulate(cyc_do, 0) - cyc_do;
#endif
  }

  SekCyclesLeft = 0;

  FUNC1(0);
  FUNC4(EVT_RUN_END);
  FUNC5(m68k);
}