
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int MMAL_CLOCK_T ;
typedef int MMAL_CLOCK_PRIVATE_T ;


 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int mmal_clock_media_time_get_locked (int *) ;

int64_t mmal_clock_media_time_get(MMAL_CLOCK_T *clock)
{
   int64_t media_time;
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)clock;

   LOCK(private);
   media_time = mmal_clock_media_time_get_locked(private);
   UNLOCK(private);

   return media_time;
}
