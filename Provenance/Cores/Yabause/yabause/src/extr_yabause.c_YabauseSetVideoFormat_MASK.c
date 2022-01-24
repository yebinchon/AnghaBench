#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int TVSTAT; } ;
struct TYPE_3__ {int IsPal; int MaxLineCount; int tickfreq; int OneFrameTime; int /*<<< orphan*/  CurSH2FreqType; } ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* Vdp2Regs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  lastticks ; 
 int FUNC4 (int) ; 
 TYPE_1__ yabsys ; 

void FUNC5(int type) {
   yabsys.IsPal = type;
   yabsys.MaxLineCount = type ? 313 : 263;
#ifdef WIN32
   QueryPerformanceFrequency((LARGE_INTEGER *)&yabsys.tickfreq);
#elif defined(_arch_dreamcast)
   yabsys.tickfreq = 1000;
#elif defined(GEKKO)
   yabsys.tickfreq = secs_to_ticks(1);
#elif defined(PSP)
   yabsys.tickfreq = 1000000;
#elif defined(HAVE_GETTIMEOFDAY)
   yabsys.tickfreq = 1000000;
#elif defined(HAVE_LIBSDL)
   yabsys.tickfreq = 1000;
#endif
   yabsys.OneFrameTime =
      type ? (yabsys.tickfreq / 50) : (yabsys.tickfreq * 1001 / 60000);
   Vdp2Regs->TVSTAT = Vdp2Regs->TVSTAT | (type & 0x1);
   FUNC1(type);
   FUNC2(yabsys.CurSH2FreqType);
   lastticks = FUNC3();
}