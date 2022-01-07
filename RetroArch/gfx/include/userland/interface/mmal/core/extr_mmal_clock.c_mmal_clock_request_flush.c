
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ scheduling; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int LOCK (TYPE_1__*) ;
 int MMAL_SUCCESS ;
 int MMAL_TIME_UNKNOWN ;
 int UNLOCK (TYPE_1__*) ;
 int mmal_clock_request_flush_locked (TYPE_1__*,int ) ;

MMAL_STATUS_T mmal_clock_request_flush(MMAL_CLOCK_T *clock)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)clock;

   LOCK(private);
   if (private->scheduling)
      mmal_clock_request_flush_locked(private, MMAL_TIME_UNKNOWN);
   UNLOCK(private);

   return MMAL_SUCCESS;
}
