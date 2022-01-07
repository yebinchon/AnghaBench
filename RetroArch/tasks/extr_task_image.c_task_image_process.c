
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int height; int pixels; } ;
struct nbio_image_handle {TYPE_1__ ti; int size; int type; int handle; } ;


 int IMAGE_PROCESS_ERROR ;
 int image_transfer_is_valid (int ,int ) ;
 int image_transfer_process (int ,int ,int *,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static int task_image_process(
      struct nbio_image_handle *image,
      unsigned *width,
      unsigned *height)
{
   int retval;

   if (!image_transfer_is_valid(image->handle, image->type))
      return IMAGE_PROCESS_ERROR;

   retval = image_transfer_process(
         image->handle,
         image->type,
         &image->ti.pixels, image->size, width, height);

   if (retval == IMAGE_PROCESS_ERROR)
      return IMAGE_PROCESS_ERROR;

   image->ti.width = *width;
   image->ti.height = *height;

   return retval;
}
