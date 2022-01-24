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

/* Variables and functions */
 int /*<<< orphan*/  CELL_SYSMODULE_NET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * _net_compat_net_memory ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
#if defined(_WIN32)
   WSACleanup();
#elif defined(__CELLOS_LV2__) && !defined(__PSL1GHT__)
   cellNetCtlTerm();
   sys_net_finalize_network();
   cellSysmoduleUnloadModule(CELL_SYSMODULE_NET);
#elif defined(VITA)
   sceNetCtlTerm();
   sceNetTerm();

   if (_net_compat_net_memory)
   {
      free(_net_compat_net_memory);
      _net_compat_net_memory = NULL;
   }
#elif defined(GEKKO) && !defined(HW_DOL)
   net_deinit();
#elif defined(_3DS)
   socExit();

   if(_net_compat_net_memory)
   {
	  free(_net_compat_net_memory);
	  _net_compat_net_memory = NULL;
   }
#endif
}