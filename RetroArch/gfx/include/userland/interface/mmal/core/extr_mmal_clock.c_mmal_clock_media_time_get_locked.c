
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int media_time; } ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int mmal_clock_update_local_time_locked (TYPE_1__*) ;

__attribute__((used)) static int64_t mmal_clock_media_time_get_locked(MMAL_CLOCK_PRIVATE_T *private)
{
   mmal_clock_update_local_time_locked(private);
   return private->media_time;
}
