#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SceAppUtilInitParam ;
typedef  int /*<<< orphan*/  SceAppUtilBootParam ;

/* Variables and functions */
 int /*<<< orphan*/  PSP_MEMORY_PARTITION_KERNEL ; 
 int /*<<< orphan*/  SCE_SYSMODULE_NET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(void *data)
{
#ifndef IS_SALAMANDER

#ifdef VITA
   scePowerSetArmClockFrequency(444);
   scePowerSetBusClockFrequency(222);
   scePowerSetGpuClockFrequency(222);
   scePowerSetGpuXbarClockFrequency(166);
   sceSysmoduleLoadModule(SCE_SYSMODULE_NET);
   
   SceAppUtilInitParam appUtilParam;
   SceAppUtilBootParam appUtilBootParam;
   memset(&appUtilParam, 0, sizeof(SceAppUtilInitParam));
   memset(&appUtilBootParam, 0, sizeof(SceAppUtilBootParam));
   sceAppUtilInit(&appUtilParam, &appUtilBootParam);
#else
   (void)data;
   /* initialize debug screen */
   FUNC2();
   FUNC1();

   FUNC13();

   FUNC3(0); /* disable FPU exceptions */
   FUNC9(333,333,166);
#endif
   FUNC5();

#endif

#if defined(HAVE_KERNEL_PRX) || defined(IS_SALAMANDER)
#ifndef VITA
   pspSdkLoadStartModule("kernel_functions.prx", PSP_MEMORY_PARTITION_KERNEL);
#endif
#endif
}