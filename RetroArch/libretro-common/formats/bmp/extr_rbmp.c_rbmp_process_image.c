
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * output_image; int buff_data; } ;
typedef TYPE_1__ rbmp_t ;


 int IMAGE_PROCESS_END ;
 int IMAGE_PROCESS_ERROR ;
 int rbmp_convert_frame (int *,unsigned int,unsigned int) ;
 scalar_t__ rbmp_load_from_memory (int ,int,unsigned int*,unsigned int*,int*,int) ;

int rbmp_process_image(rbmp_t *rbmp, void **buf_data,
      size_t size, unsigned *width, unsigned *height)
{
   int comp;

   if (!rbmp)
      return IMAGE_PROCESS_ERROR;

   rbmp->output_image = (uint32_t*)rbmp_load_from_memory(rbmp->buff_data,
                           (int)size, width, height, &comp, 4);
   *buf_data = rbmp->output_image;

   rbmp_convert_frame(rbmp->output_image, *width, *height);

   return IMAGE_PROCESS_END;
}
