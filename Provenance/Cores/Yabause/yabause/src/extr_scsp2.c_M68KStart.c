
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Reset ) () ;} ;


 TYPE_1__* M68K ;
 int PSP_FLUSH_ALL () ;
 int ScspSyncThread () ;
 int m68k_running ;
 scalar_t__ m68k_saved_cycles ;
 scalar_t__ scsp_thread_running ;
 int stub1 () ;

void M68KStart(void)
{
   if (scsp_thread_running)
      ScspSyncThread();

   M68K->Reset();
   m68k_saved_cycles = 0;

   m68k_running = 1;

   if (scsp_thread_running)
      PSP_FLUSH_ALL();
}
