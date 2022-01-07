
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_active; } ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;
typedef int MMAL_BOOL_T ;



MMAL_BOOL_T mmal_clock_is_active(MMAL_CLOCK_T *clock)
{
   return ((MMAL_CLOCK_PRIVATE_T*)clock)->is_active;
}
