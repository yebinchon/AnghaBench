
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int update_threshold_upper; int update_threshold_lower; } ;
struct TYPE_6__ {int threshold_upper; int threshold_lower; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_CLOCK_UPDATE_THRESHOLD_T ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_2__ MMAL_CLOCK_PRIVATE_T ;


 int LOCK (TYPE_2__*) ;
 int MMAL_SUCCESS ;
 int UNLOCK (TYPE_2__*) ;

MMAL_STATUS_T mmal_clock_update_threshold_get(MMAL_CLOCK_T *clock, MMAL_CLOCK_UPDATE_THRESHOLD_T *update_threshold)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T *)clock;

   LOCK(private);
   update_threshold->threshold_lower = private->update_threshold_lower;
   update_threshold->threshold_upper = private->update_threshold_upper;
   UNLOCK(private);

   return MMAL_SUCCESS;
}
