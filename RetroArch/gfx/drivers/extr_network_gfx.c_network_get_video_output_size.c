
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* width; unsigned int* height; } ;
typedef TYPE_1__ gfx_ctx_size_t ;


 int video_context_driver_get_video_output_size (TYPE_1__*) ;

__attribute__((used)) static void network_get_video_output_size(void *data,
      unsigned *width, unsigned *height)
{
   gfx_ctx_size_t size_data;
   size_data.width = width;
   size_data.height = height;
   video_context_driver_get_video_output_size(&size_data);
}
