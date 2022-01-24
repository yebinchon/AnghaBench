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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  alarm_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PI_RSW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERNEL_HEAP ; 
 int /*<<< orphan*/  LWP_MAX_WATCHDOGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __RSWHandler ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  __sys_inIPL ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  sys_alarm_objects ; 
 int /*<<< orphan*/  sys_reset_func_queue ; 
 int system_initialized ; 

void FUNC39()
{
	u32 level;

	FUNC3(level);

	FUNC9();

	if(system_initialized) return;
	system_initialized = 1;

	FUNC5();

	FUNC15();
	FUNC19();
#if defined(HW_RVL)
	__ipcbuffer_init();
#endif
	FUNC31(KERNEL_HEAP);
	FUNC25(&sys_reset_func_queue);
	FUNC23(&sys_alarm_objects,LWP_MAX_WATCHDOGS,sizeof(alarm_st));
	FUNC36();
	FUNC24();
	FUNC30();
	FUNC13();
	FUNC37();
	FUNC11();
	FUNC17();
	FUNC14();
	FUNC35();
	FUNC34();
	FUNC28();
	FUNC27();
	FUNC32();
	FUNC21();
	FUNC26();
	FUNC22();
	FUNC20();
	FUNC38();
	FUNC12();

	if(!__sys_inIPL)
		FUNC33();

#ifdef SDLOADER_FIX
	__SYS_SetBootTime();
#endif
	FUNC0();
	FUNC8();
#if defined(HW_RVL)
	__IPC_ClntInit();
#elif defined(HW_DOL)
	IRQ_Request(IRQ_PI_RSW,__RSWHandler,NULL);
	__MaskIrq(IRQMASK(IRQ_PI_RSW));
#endif
	FUNC18(1);
	FUNC29();
	FUNC4(level);
}