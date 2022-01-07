
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int duration; int threshold; } ;
struct TYPE_6__ {int discont_duration; int discont_threshold; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;
typedef TYPE_2__ MMAL_CLOCK_DISCONT_THRESHOLD_T ;


 int LOCK (TYPE_1__*) ;
 int MMAL_SUCCESS ;
 int UNLOCK (TYPE_1__*) ;

MMAL_STATUS_T mmal_clock_discont_threshold_get(MMAL_CLOCK_T *clock, MMAL_CLOCK_DISCONT_THRESHOLD_T *discont)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T *)clock;

   LOCK(private);
   discont->threshold = private->discont_threshold;
   discont->duration = private->discont_duration;
   UNLOCK(private);

   return MMAL_SUCCESS;
}
