
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; scalar_t__ scheduling; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_1__ MMAL_CLOCK_PRIVATE_T ;


 int MMAL_SUCCESS ;
 int mmal_clock_destroy_scheduling (TYPE_1__*) ;
 int vcos_free (TYPE_1__*) ;
 int vcos_mutex_delete (int *) ;

MMAL_STATUS_T mmal_clock_destroy(MMAL_CLOCK_T *clock)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)clock;

   if (private->scheduling)
      mmal_clock_destroy_scheduling(private);

   vcos_mutex_delete(&private->lock);

   vcos_free(private);

   return MMAL_SUCCESS;
}
