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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  WSADATA ;
struct TYPE_3__ {scalar_t__ flags; int /*<<< orphan*/  size; int /*<<< orphan*/ * memory; } ;
typedef  TYPE_1__ SceNetInitParam ;
typedef  scalar_t__ Result ;

/* Variables and functions */
 int CELL_NET_CTL_STATE_IPObtained ; 
 int /*<<< orphan*/  CELL_SYSMODULE_NET ; 
 int /*<<< orphan*/  COMPAT_NET_INIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ SCE_NET_ERROR_ENOTINIT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOC_ALIGN ; 
 int /*<<< orphan*/  SOC_BUFFERSIZE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * _net_compat_net_memory ; 
 scalar_t__ FUNC2 (int*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  retro_epoll_fd ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

bool FUNC18(void)
{
#ifdef _WIN32
   WSADATA wsaData;
#endif
   static bool inited = false;
   if (inited)
      return true;

#if defined(_WIN32)
   if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0)
   {
      network_deinit();
      return false;
   }
#elif defined(__CELLOS_LV2__) && !defined(__PSL1GHT__)
   int timeout_count = 10;

   cellSysmoduleLoadModule(CELL_SYSMODULE_NET);
   sys_net_initialize_network();

   if (cellNetCtlInit() < 0)
      return false;

   for (;;)
   {
      int state;
      if (cellNetCtlGetState(&state) < 0)
         return false;

      if (state == CELL_NET_CTL_STATE_IPObtained)
         break;

      retro_sleep(500);
      timeout_count--;
      if (timeout_count < 0)
         return 0;
   }
#elif defined(VITA)
   SceNetInitParam initparam;

   if (sceNetShowNetstat() == SCE_NET_ERROR_ENOTINIT)
   {
      _net_compat_net_memory = malloc(COMPAT_NET_INIT_SIZE);

      initparam.memory       = _net_compat_net_memory;
      initparam.size         = COMPAT_NET_INIT_SIZE;
      initparam.flags        = 0;

      sceNetInit(&initparam);

      sceNetCtlInit();
   }

   retro_epoll_fd = sceNetEpollCreate("epoll", 0);
#elif defined(GEKKO)
   char t[16];
   if (if_config(t, NULL, NULL, TRUE, 10) < 0)
      return false;
#elif defined(WIIU)
   socket_lib_init();
#elif defined(_3DS)
    _net_compat_net_memory = (u32*)memalign(SOC_ALIGN, SOC_BUFFERSIZE);
	if (!_net_compat_net_memory)
		return false;
	Result ret = socInit(_net_compat_net_memory, SOC_BUFFERSIZE);//WIFI init
	if (ret != 0)
		return false;
#else
   FUNC14(SIGPIPE, SIG_IGN); /* Do not like SIGPIPE killing our app. */
#endif

   inited = true;
   return true;
}