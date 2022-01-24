#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  member_0; } ;
typedef  int uint32_t ;
struct TYPE_9__ {int vulkan_gpu_index; } ;
struct TYPE_11__ {TYPE_1__ ints; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_10__ {void* gpu; int /*<<< orphan*/  instance; } ;
struct TYPE_12__ {TYPE_2__ context; } ;
typedef  TYPE_4__ gfx_ctx_vulkan_data_t ;
struct TYPE_13__ {int /*<<< orphan*/  deviceName; } ;
typedef  TYPE_5__ VkPhysicalDeviceProperties ;
typedef  void* VkPhysicalDevice ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_CTX_VULKAN_API ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 scalar_t__ VK_SUCCESS ; 
 scalar_t__ FUNC3 (int,int) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*,void**) ; 
 int /*<<< orphan*/  FUNC11 (void*,TYPE_5__*) ; 
 scalar_t__ vulkan_gpu_list ; 

__attribute__((used)) static bool FUNC12(gfx_ctx_vulkan_data_t *vk)
{
   unsigned i;
   uint32_t gpu_count               = 0;
   VkPhysicalDevice *gpus           = NULL;
   union string_list_elem_attr attr = {0};
   settings_t *settings             = FUNC4();

   if (FUNC10(vk->context.instance,
            &gpu_count, NULL) != VK_SUCCESS)
   {
      FUNC0("[Vulkan]: Failed to enumerate physical devices.\n");
      return false;
   }

   gpus = (VkPhysicalDevice*)FUNC3(gpu_count, sizeof(*gpus));
   if (!gpus)
   {
      FUNC0("[Vulkan]: Failed to enumerate physical devices.\n");
      return false;
   }

   if (FUNC10(vk->context.instance,
            &gpu_count, gpus) != VK_SUCCESS)
   {
      FUNC0("[Vulkan]: Failed to enumerate physical devices.\n");
      FUNC5(gpus);
      return false;
   }

   if (gpu_count < 1)
   {
      FUNC0("[Vulkan]: Failed to enumerate Vulkan physical device.\n");
      FUNC5(gpus);
      return false;
   }

   if (vulkan_gpu_list)
      FUNC7(vulkan_gpu_list);

   vulkan_gpu_list = FUNC8();

   for (i = 0; i < gpu_count; i++)
   {
      VkPhysicalDeviceProperties gpu_properties;

      FUNC11(gpus[i],
            &gpu_properties);

      FUNC1("[Vulkan]: Found GPU at index %d: %s\n", i, gpu_properties.deviceName);

      FUNC6(vulkan_gpu_list, gpu_properties.deviceName, attr);
   }

   FUNC9(GFX_CTX_VULKAN_API, vulkan_gpu_list);

   if (0 <= settings->ints.vulkan_gpu_index && settings->ints.vulkan_gpu_index < (int)gpu_count)
   {
      FUNC1("[Vulkan]: Using GPU index %d.\n", settings->ints.vulkan_gpu_index);
      vk->context.gpu = gpus[settings->ints.vulkan_gpu_index];
   }
   else
   {
      FUNC2("[Vulkan]: Invalid GPU index %d, using first device found.\n", settings->ints.vulkan_gpu_index);
      vk->context.gpu = gpus[0];
   }

   FUNC5(gpus);
   return true;
}