
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Discord_ClearPresence () ;
 int Discord_Shutdown () ;
 int RARCH_LOG (char*) ;
 int discord_ready ;

void discord_shutdown(void)
{
   RARCH_LOG("[discord] shutting down ..\n");
   Discord_ClearPresence();
   Discord_Shutdown();
   discord_ready = 0;
}
