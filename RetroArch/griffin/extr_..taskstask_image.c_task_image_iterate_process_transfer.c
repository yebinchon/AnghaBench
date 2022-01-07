
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_image_handle {scalar_t__ frame_duration; int processing_final_state; } ;
typedef scalar_t__ retro_time_t ;


 int IMAGE_PROCESS_NEXT ;
 scalar_t__ cpu_features_get_time_usec () ;
 int task_image_process (struct nbio_image_handle*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int task_image_iterate_process_transfer(struct nbio_image_handle *image)
{
   int retval = 0;
   unsigned width = 0;
   unsigned height = 0;
   retro_time_t start_time = cpu_features_get_time_usec();

   do
   {
      retval = task_image_process(image, &width, &height);

      if (retval != IMAGE_PROCESS_NEXT)
         break;
   }
   while (cpu_features_get_time_usec() - start_time < image->frame_duration);

   if (retval == IMAGE_PROCESS_NEXT)
      return 0;

   image->processing_final_state = retval;
   return -1;
}
