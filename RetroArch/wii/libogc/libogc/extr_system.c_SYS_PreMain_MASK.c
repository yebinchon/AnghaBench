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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  __STMEventHandler ; 

void FUNC6()
{
#if defined(HW_RVL)
	u32 i;

	for (i = 0; i < 32; ++i)
		IOS_Close(i);

	__IOS_LoadStartupIOS();
	__IOS_InitializeSubsystems();
	STM_RegisterEventHandler(__STMEventHandler);
	CONF_Init();
	WII_Initialize();
#endif
}