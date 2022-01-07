
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int LoadExecPS2 (char*,int ,int *) ;
 int Log_flushlog () ;
 scalar_t__ MONITOR_Run () ;
 int SifExitRpc () ;
 int Sound_Exit () ;
 int TRUE ;
 int fioExit () ;
 int timer_shutdown () ;

int PLATFORM_Exit(int run_monitor)
{

 Log_flushlog();
 fioExit();
 SifExitRpc();
 LoadExecPS2("mc0:/BOOT/BOOT.ELF", 0, ((void*)0));

 return FALSE;
}
