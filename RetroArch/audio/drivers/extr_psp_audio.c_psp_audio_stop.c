
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int running; int * worker_thread; } ;
typedef TYPE_1__ psp_audio_t ;


 int sthread_join (int *) ;

__attribute__((used)) static bool psp_audio_stop(void *data)
{
   psp_audio_t* psp = (psp_audio_t*)data;

   if (psp){
      psp->running = 0;

      if (!psp->worker_thread)
      return 1;

      sthread_join(psp->worker_thread);
      psp->worker_thread = ((void*)0);
   }
   return 1;
}
