
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSP_FLUSH_ALL () ;
 scalar_t__ PSP_UC (int ) ;
 int YAB_THREAD_SCSP ;
 int YabThreadWake (int ) ;
 int YabThreadYield () ;
 int scsp_clock ;
 scalar_t__ scsp_clock_target ;

__attribute__((used)) static void ScspSyncThread(void)
{
   PSP_FLUSH_ALL();
   while (PSP_UC(scsp_clock) != scsp_clock_target)
   {
      YabThreadWake(YAB_THREAD_SCSP);
      YabThreadYield();
   }
}
