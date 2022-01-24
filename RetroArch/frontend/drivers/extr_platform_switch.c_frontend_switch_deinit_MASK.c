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
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ClkrstSession ;

/* Variables and functions */
 int /*<<< orphan*/  PcvModuleId_CpuBus ; 
 int /*<<< orphan*/  PcvModule_CpuBus ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ psmInitialized ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/ * splashData ; 

__attribute__((used)) static void FUNC12(void *data)
{
   (void)data;

#ifdef HAVE_LIBNX
   nifmExit();

   if(hosversionBefore(8, 0, 0)) {
      pcvSetClockRate(PcvModule_CpuBus, 1020000000);
      pcvExit();
   } else {
      ClkrstSession session = {0};
      clkrstOpenSession(&session, PcvModuleId_CpuBus, 3);
      clkrstSetClockRate(&session, 1020000000);
      clkrstCloseSession(&session);
      clkrstExit();
   }

#if defined(SWITCH) && defined(NXLINK)
   socketExit();
#endif

   /* Splash */
   if (splashData)
   {
      free(splashData);
      splashData = NULL;
   }

   if (psmInitialized)
       psmExit();

   appletUnlockExit();
#endif
}