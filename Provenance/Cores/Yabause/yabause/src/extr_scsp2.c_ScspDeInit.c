
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* DeInit ) () ;} ;


 TYPE_1__* SNDCore ;
 int * SoundRam ;
 int T2MemoryDeInit (int *) ;
 int YAB_THREAD_SCSP ;
 int YabThreadWait (int ) ;
 int YabThreadWake (int ) ;
 scalar_t__ scsp_thread_running ;
 int stub1 () ;

void ScspDeInit(void)
{
   if (scsp_thread_running)
   {
      scsp_thread_running = 0;
      YabThreadWake(YAB_THREAD_SCSP);
      YabThreadWait(YAB_THREAD_SCSP);
   }

   if (SNDCore)
      SNDCore->DeInit();
   SNDCore = ((void*)0);

   if (SoundRam)
      T2MemoryDeInit(SoundRam);
   SoundRam = ((void*)0);
}
