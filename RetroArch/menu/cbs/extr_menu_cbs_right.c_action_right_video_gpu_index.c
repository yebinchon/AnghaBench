
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct string_list {int size; } ;
struct TYPE_4__ {int vulkan_gpu_index; int d3d10_gpu_index; int d3d11_gpu_index; int d3d12_gpu_index; } ;
struct TYPE_5__ {TYPE_1__ ints; } ;
typedef TYPE_2__ settings_t ;
typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;






 TYPE_2__* config_get_ptr () ;
 int video_context_driver_get_api () ;
 struct string_list* video_driver_get_gpu_api_devices (int) ;

__attribute__((used)) static int action_right_video_gpu_index(unsigned type, const char *label,
      bool wraparound)
{
   enum gfx_ctx_api api = video_context_driver_get_api();

   switch (api)
   {
      default:
         break;
   }

   return 0;
}
