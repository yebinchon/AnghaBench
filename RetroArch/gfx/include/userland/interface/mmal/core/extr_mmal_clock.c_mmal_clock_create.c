
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int clock; int request_threshold_enable; scalar_t__ request_threshold; int discont_duration; int discont_threshold; int update_threshold_upper; int update_threshold_lower; int lock; } ;
struct TYPE_6__ {int member_0; int member_1; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_RATIONAL_T ;
typedef int MMAL_CLOCK_T ;
typedef TYPE_2__ MMAL_CLOCK_PRIVATE_T ;


 int CLOCK_DISCONT_DURATION ;
 int CLOCK_DISCONT_THRESHOLD ;
 int CLOCK_UPDATE_THRESHOLD_LOWER ;
 int CLOCK_UPDATE_THRESHOLD_UPPER ;
 int LOG_ERROR (char*) ;
 int MMAL_EINVAL ;
 int MMAL_ENOMEM ;
 int MMAL_ENOSPC ;
 int MMAL_FALSE ;
 int MMAL_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 int mmal_clock_scale_set (int *,TYPE_1__) ;
 TYPE_2__* vcos_calloc (int,unsigned int,char*) ;
 int vcos_free (TYPE_2__*) ;
 scalar_t__ vcos_mutex_create (int *,char*) ;

MMAL_STATUS_T mmal_clock_create(MMAL_CLOCK_T **clock)
{
   unsigned int size = sizeof(MMAL_CLOCK_PRIVATE_T);
   MMAL_RATIONAL_T scale = { 1, 1 };
   MMAL_CLOCK_PRIVATE_T *private;


   if (clock == ((void*)0))
      return MMAL_EINVAL;

   private = vcos_calloc(1, size, "mmal-clock");
   if (!private)
   {
      LOG_ERROR("failed to allocate memory");
      return MMAL_ENOMEM;
   }

   if (vcos_mutex_create(&private->lock, "mmal-clock lock") != VCOS_SUCCESS)
   {
      LOG_ERROR("failed to create lock mutex");
      vcos_free(private);
      return MMAL_ENOSPC;
   }


   private->update_threshold_lower = CLOCK_UPDATE_THRESHOLD_LOWER;
   private->update_threshold_upper = CLOCK_UPDATE_THRESHOLD_UPPER;
   private->discont_threshold = CLOCK_DISCONT_THRESHOLD;
   private->discont_duration = CLOCK_DISCONT_DURATION;
   private->request_threshold = 0;
   private->request_threshold_enable = MMAL_FALSE;


   mmal_clock_scale_set(&private->clock, scale);

   *clock = &private->clock;
   return MMAL_SUCCESS;
}
