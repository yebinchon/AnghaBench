
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scale_rational; } ;
typedef int MMAL_RATIONAL_T ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int LOCK (TYPE_1__*) ;
 int UNLOCK (TYPE_1__*) ;

MMAL_RATIONAL_T mmal_clock_scale_get(MMAL_CLOCK_T *clock)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)clock;
   MMAL_RATIONAL_T scale;

   LOCK(private);
   scale = private->scale_rational;
   UNLOCK(private);

   return scale;
}
