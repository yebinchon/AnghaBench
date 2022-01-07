
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_CLOCK_T ;
typedef scalar_t__ MMAL_BOOL_T ;


 int MMAL_SUCCESS ;
 int mmal_clock_start (int *) ;
 int mmal_clock_stop (int *) ;

MMAL_STATUS_T mmal_clock_active_set(MMAL_CLOCK_T *clock, MMAL_BOOL_T active)
{
   if (active)
      mmal_clock_start(clock);
   else
      mmal_clock_stop(clock);

   return MMAL_SUCCESS;
}
