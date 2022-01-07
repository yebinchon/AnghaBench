
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_active; } ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int MMAL_FALSE ;
 int mmal_clock_wake_thread (TYPE_1__*) ;

__attribute__((used)) static void mmal_clock_stop(MMAL_CLOCK_T *clock)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)clock;

   private->is_active = MMAL_FALSE;

   mmal_clock_wake_thread(private);
}
