
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int WSADATA ;
struct TYPE_3__ {scalar_t__ flags; int size; int * memory; } ;
typedef TYPE_1__ SceNetInitParam ;
typedef scalar_t__ Result ;


 int CELL_NET_CTL_STATE_IPObtained ;
 int CELL_SYSMODULE_NET ;
 int COMPAT_NET_INIT_SIZE ;
 int MAKEWORD (int,int) ;
 scalar_t__ SCE_NET_ERROR_ENOTINIT ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SOC_ALIGN ;
 int SOC_BUFFERSIZE ;
 int TRUE ;
 scalar_t__ WSAStartup (int ,int *) ;
 int * _net_compat_net_memory ;
 scalar_t__ cellNetCtlGetState (int*) ;
 scalar_t__ cellNetCtlInit () ;
 int cellSysmoduleLoadModule (int ) ;
 scalar_t__ if_config (char*,int *,int *,int ,int) ;
 int * malloc (int ) ;
 scalar_t__ memalign (int ,int ) ;
 int network_deinit () ;
 int retro_epoll_fd ;
 int retro_sleep (int) ;
 int sceNetCtlInit () ;
 int sceNetEpollCreate (char*,int ) ;
 int sceNetInit (TYPE_1__*) ;
 scalar_t__ sceNetShowNetstat () ;
 int signal (int ,int ) ;
 scalar_t__ socInit (int *,int ) ;
 int socket_lib_init () ;
 int sys_net_initialize_network () ;

bool network_init(void)
{



   static bool inited = 0;
   if (inited)
      return 1;
   signal(SIGPIPE, SIG_IGN);


   inited = 1;
   return 1;
}
