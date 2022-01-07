
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSP_FLUSH_ALL () ;
 int ScspSyncThread () ;
 scalar_t__ m68k_running ;
 scalar_t__ scsp_thread_running ;

void M68KStop(void)
{
   if (scsp_thread_running)
      ScspSyncThread();

   m68k_running = 0;

   if (scsp_thread_running)
      PSP_FLUSH_ALL();
}
