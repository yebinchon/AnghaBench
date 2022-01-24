#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nbio_image_handle {scalar_t__ frame_duration; int processing_final_state; } ;
typedef  scalar_t__ retro_time_t ;

/* Variables and functions */
 int IMAGE_PROCESS_NEXT ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (struct nbio_image_handle*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct nbio_image_handle *image)
{
   int retval                      = 0;
   unsigned width                  = 0;
   unsigned height                 = 0;
   retro_time_t start_time         = FUNC0();

   do
   {
      retval = FUNC1(image, &width, &height);

      if (retval != IMAGE_PROCESS_NEXT)
         break;
   }
   while (FUNC0() - start_time < image->frame_duration);

   if (retval == IMAGE_PROCESS_NEXT)
      return 0;

   image->processing_final_state = retval;
   return -1;
}