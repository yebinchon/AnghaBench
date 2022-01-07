
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


union string_list_elem_attr {int member_0; } ;
typedef int uint32_t ;
struct TYPE_9__ {int vulkan_gpu_index; } ;
struct TYPE_11__ {TYPE_1__ ints; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_10__ {void* gpu; int instance; } ;
struct TYPE_12__ {TYPE_2__ context; } ;
typedef TYPE_4__ gfx_ctx_vulkan_data_t ;
struct TYPE_13__ {int deviceName; } ;
typedef TYPE_5__ VkPhysicalDeviceProperties ;
typedef void* VkPhysicalDevice ;


 int GFX_CTX_VULKAN_API ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,int,...) ;
 int RARCH_WARN (char*,size_t) ;
 scalar_t__ VK_SUCCESS ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* config_get_ptr () ;
 int free (void**) ;
 int string_list_append (scalar_t__,int ,union string_list_elem_attr) ;
 int string_list_free (scalar_t__) ;
 scalar_t__ string_list_new () ;
 int video_driver_set_gpu_api_devices (int ,scalar_t__) ;
 scalar_t__ vkEnumeratePhysicalDevices (int ,int*,void**) ;
 int vkGetPhysicalDeviceProperties (void*,TYPE_5__*) ;
 scalar_t__ vulkan_gpu_list ;

__attribute__((used)) static bool vulkan_context_init_gpu(gfx_ctx_vulkan_data_t *vk)
{
   unsigned i;
   uint32_t gpu_count = 0;
   VkPhysicalDevice *gpus = ((void*)0);
   union string_list_elem_attr attr = {0};
   settings_t *settings = config_get_ptr();

   if (vkEnumeratePhysicalDevices(vk->context.instance,
            &gpu_count, ((void*)0)) != VK_SUCCESS)
   {
      RARCH_ERR("[Vulkan]: Failed to enumerate physical devices.\n");
      return 0;
   }

   gpus = (VkPhysicalDevice*)calloc(gpu_count, sizeof(*gpus));
   if (!gpus)
   {
      RARCH_ERR("[Vulkan]: Failed to enumerate physical devices.\n");
      return 0;
   }

   if (vkEnumeratePhysicalDevices(vk->context.instance,
            &gpu_count, gpus) != VK_SUCCESS)
   {
      RARCH_ERR("[Vulkan]: Failed to enumerate physical devices.\n");
      free(gpus);
      return 0;
   }

   if (gpu_count < 1)
   {
      RARCH_ERR("[Vulkan]: Failed to enumerate Vulkan physical device.\n");
      free(gpus);
      return 0;
   }

   if (vulkan_gpu_list)
      string_list_free(vulkan_gpu_list);

   vulkan_gpu_list = string_list_new();

   for (i = 0; i < gpu_count; i++)
   {
      VkPhysicalDeviceProperties gpu_properties;

      vkGetPhysicalDeviceProperties(gpus[i],
            &gpu_properties);

      RARCH_LOG("[Vulkan]: Found GPU at index %d: %s\n", i, gpu_properties.deviceName);

      string_list_append(vulkan_gpu_list, gpu_properties.deviceName, attr);
   }

   video_driver_set_gpu_api_devices(GFX_CTX_VULKAN_API, vulkan_gpu_list);

   if (0 <= settings->ints.vulkan_gpu_index && settings->ints.vulkan_gpu_index < (int)gpu_count)
   {
      RARCH_LOG("[Vulkan]: Using GPU index %d.\n", settings->ints.vulkan_gpu_index);
      vk->context.gpu = gpus[settings->ints.vulkan_gpu_index];
   }
   else
   {
      RARCH_WARN("[Vulkan]: Invalid GPU index %d, using first device found.\n", settings->ints.vulkan_gpu_index);
      vk->context.gpu = gpus[0];
   }

   free(gpus);
   return 1;
}
