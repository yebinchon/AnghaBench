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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  emu_status; } ;

/* Variables and functions */
 int EL_ANOMALY ; 
 int EL_SVP ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  SSP_WAIT_30FE06 ; 
 int /*<<< orphan*/  SSP_WAIT_30FE08 ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rPM4 ; 
 TYPE_1__* ssp ; 

__attribute__((used)) static u32 FUNC3(void)
{
  u32 d = FUNC2(4, 0, 0);
  if (d == 0) {
    switch (FUNC0()) {
      case 0x0854:
        ssp->emu_status |= SSP_WAIT_30FE08;
#ifdef LOG_SVP
        elprintf(EL_SVP, "det TIGHT loop: [30fe08]");
#endif
        break;
      case 0x4f12:
        ssp->emu_status |= SSP_WAIT_30FE06;
#ifdef LOG_SVP
        elprintf(EL_SVP, "det TIGHT loop: [30fe06]");
#endif
        break;
    }
  }
  if (d != (u32)-1) return d;
  /* can be removed? */
#ifdef LOG_SVP
  elprintf(EL_SVP|EL_ANOMALY, "PM4 raw r %04x @ %04x", rPM4, GET_PPC_OFFS());
#endif
  return rPM4;
}