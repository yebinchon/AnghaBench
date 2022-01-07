
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread; int stop_thread; } ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int MMAL_TRUE ;
 int mmal_clock_wake_thread (TYPE_1__*) ;
 int vcos_thread_join (int *,int *) ;

__attribute__((used)) static void mmal_clock_stop_thread(MMAL_CLOCK_PRIVATE_T *private)
{
   private->stop_thread = MMAL_TRUE;
   mmal_clock_wake_thread(private);
   vcos_thread_join(&private->thread, ((void*)0));
}
