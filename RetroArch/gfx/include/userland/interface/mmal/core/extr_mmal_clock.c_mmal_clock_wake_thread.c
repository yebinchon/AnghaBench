
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; scalar_t__ scheduling; } ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void mmal_clock_wake_thread(MMAL_CLOCK_PRIVATE_T *private)
{
   if (private->scheduling)
      vcos_semaphore_post(&private->event);
}
