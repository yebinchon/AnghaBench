
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int list_pending; int list_free; } ;
struct TYPE_6__ {int timer; int event; TYPE_1__ request; int clock; } ;
typedef TYPE_2__ MMAL_CLOCK_PRIVATE_T ;


 int mmal_clock_request_flush (int *) ;
 int mmal_clock_stop_thread (TYPE_2__*) ;
 int mmal_clock_timer_destroy (int *) ;
 int mmal_list_destroy (int ) ;
 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static void mmal_clock_destroy_scheduling(MMAL_CLOCK_PRIVATE_T *private)
{
   mmal_clock_stop_thread(private);

   mmal_clock_request_flush(&private->clock);

   mmal_list_destroy(private->request.list_free);
   mmal_list_destroy(private->request.list_pending);

   vcos_semaphore_delete(&private->event);

   mmal_clock_timer_destroy(&private->timer);
}
