
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbio_image_handle {int processing_final_state; int is_blocking_on_processing; int is_blocking; int is_finished; int ti; } ;
struct TYPE_2__ {int is_finished; scalar_t__ data; } ;
typedef TYPE_1__ nbio_handle_t ;




 int image_texture_color_convert (unsigned int,unsigned int,unsigned int,unsigned int,int *) ;
 int image_texture_set_color_shifts (unsigned int*,unsigned int*,unsigned int*,unsigned int*,int *) ;

__attribute__((used)) static int cb_image_upload_generic(void *data, size_t len)
{
   unsigned r_shift, g_shift, b_shift, a_shift;
   nbio_handle_t *nbio = (nbio_handle_t*)data;
   struct nbio_image_handle *image = (struct nbio_image_handle*)nbio->data;

   if (!image)
      return -1;

   switch (image->processing_final_state)
   {
      case 129:
      case 128:
         return -1;
      default:
         break;
   }

   image_texture_set_color_shifts(&r_shift, &g_shift, &b_shift,
         &a_shift, &image->ti);

   image_texture_color_convert(r_shift, g_shift, b_shift,
         a_shift, &image->ti);

   image->is_blocking_on_processing = 0;
   image->is_blocking = 1;
   image->is_finished = 1;
   nbio->is_finished = 1;

   return 0;
}
