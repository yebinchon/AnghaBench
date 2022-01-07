
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_int_setting {int dummy; } ;
struct TYPE_4__ {int content_favorites_size; int d3d12_gpu_index; int d3d11_gpu_index; int d3d10_gpu_index; int vulkan_gpu_index; int crt_switch_center_adjust; int audio_wasapi_sh_buffer_length; int netplay_check_frames; int state_slot; } ;
struct TYPE_5__ {TYPE_1__ ints; } ;
typedef TYPE_2__ settings_t ;


 int DEFAULT_CRT_SWITCH_CENTER_ADJUST ;
 int DEFAULT_D3D10_GPU_INDEX ;
 int DEFAULT_D3D11_GPU_INDEX ;
 int DEFAULT_D3D12_GPU_INDEX ;
 int DEFAULT_VULKAN_GPU_INDEX ;
 int RARCH_OVERRIDE_SETTING_NETPLAY_CHECK_FRAMES ;
 int SETTING_INT (char*,int *,int,int ,int) ;
 int SETTING_OVERRIDE (int ) ;
 scalar_t__ calloc (int,int) ;
 int default_content_favorites_size ;
 int netplay_check_frames ;
 int wasapi_sh_buffer_length ;

__attribute__((used)) static struct config_int_setting *populate_settings_int(settings_t *settings, int *size)
{
   unsigned count = 0;
   struct config_int_setting *tmp = (struct config_int_setting*)calloc((*size + 1), sizeof(struct config_int_setting));

   if (!tmp)
      return ((void*)0);

   SETTING_INT("state_slot", &settings->ints.state_slot, 0, 0 , 0);







   SETTING_INT("crt_switch_center_adjust", &settings->ints.crt_switch_center_adjust, 0, DEFAULT_CRT_SWITCH_CENTER_ADJUST, 0);
   SETTING_INT("content_favorites_size", &settings->ints.content_favorites_size, 1, default_content_favorites_size, 0);

   *size = count;

   return tmp;
}
