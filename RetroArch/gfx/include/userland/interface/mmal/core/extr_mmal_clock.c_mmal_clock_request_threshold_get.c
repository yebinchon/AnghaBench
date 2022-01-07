
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int request_threshold_enable; int request_threshold; } ;
struct TYPE_6__ {int threshold_enable; int threshold; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_1__ MMAL_CLOCK_REQUEST_THRESHOLD_T ;
typedef TYPE_2__ MMAL_CLOCK_PRIVATE_T ;


 int LOCK (TYPE_2__*) ;
 int MMAL_SUCCESS ;
 int UNLOCK (TYPE_2__*) ;

MMAL_STATUS_T mmal_clock_request_threshold_get(MMAL_CLOCK_T *clock, MMAL_CLOCK_REQUEST_THRESHOLD_T *req)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T *)clock;

   LOCK(private);
   req->threshold = private->request_threshold;
   req->threshold_enable = private->request_threshold_enable;
   UNLOCK(private);

   return MMAL_SUCCESS;
}
