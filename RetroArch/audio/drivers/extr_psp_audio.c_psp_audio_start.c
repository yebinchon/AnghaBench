
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int running; scalar_t__ worker_thread; } ;
typedef TYPE_1__ psp_audio_t ;


 int audioMainLoop ;
 scalar_t__ sthread_create (int ,TYPE_1__*) ;

__attribute__((used)) static bool psp_audio_start(void *data, bool is_shutdown)
{
   psp_audio_t* psp = (psp_audio_t*)data;

   if(psp && psp->running)
      return 1;

   if (!psp->worker_thread)
   {
      psp->running = 1;
      psp->worker_thread = sthread_create(audioMainLoop, psp);
   }

   return 1;
}
