
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stop_thread; int timer; int event; } ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int mmal_clock_process_requests (TYPE_1__*) ;
 int mmal_clock_timer_cancel (int *) ;
 int vcos_semaphore_wait (int *) ;

__attribute__((used)) static void* mmal_clock_worker_thread(void *ctx)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)ctx;

   while (1)
   {
      vcos_semaphore_wait(&private->event);


      mmal_clock_timer_cancel(&private->timer);

      if (private->stop_thread)
         break;

      mmal_clock_process_requests(private);
   }
   return ((void*)0);
}
