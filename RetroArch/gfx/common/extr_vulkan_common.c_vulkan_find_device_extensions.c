
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VkPhysicalDevice ;
typedef int VkExtensionProperties ;


 int RARCH_ERR (char*) ;
 scalar_t__ VK_SUCCESS ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (void*,char const**,unsigned int) ;
 scalar_t__ vkEnumerateDeviceExtensionProperties (int ,int *,int*,int *) ;
 scalar_t__ vulkan_find_extensions (char const**,int,int *,int) ;

__attribute__((used)) static bool vulkan_find_device_extensions(VkPhysicalDevice gpu,
      const char **enabled, unsigned *enabled_count,
      const char **exts, unsigned num_exts,
      const char **optional_exts, unsigned num_optional_exts)
{
   uint32_t property_count;
   unsigned i;
   bool ret = 1;
   VkExtensionProperties *properties = ((void*)0);

   if (vkEnumerateDeviceExtensionProperties(gpu, ((void*)0), &property_count, ((void*)0)) != VK_SUCCESS)
      return 0;

   properties = (VkExtensionProperties*)malloc(property_count * sizeof(*properties));
   if (!properties)
   {
      ret = 0;
      goto end;
   }

   if (vkEnumerateDeviceExtensionProperties(gpu, ((void*)0), &property_count, properties) != VK_SUCCESS)
   {
      ret = 0;
      goto end;
   }

   if (!vulkan_find_extensions(exts, num_exts, properties, property_count))
   {
      RARCH_ERR("[Vulkan]: Could not find device extension. Will attempt without it.\n");
      ret = 0;
      goto end;
   }

   memcpy((void*)enabled, exts, num_exts * sizeof(*exts));
   *enabled_count = num_exts;

   for (i = 0; i < num_optional_exts; i++)
      if (vulkan_find_extensions(&optional_exts[i], 1, properties, property_count))
         enabled[(*enabled_count)++] = optional_exts[i];

end:
   free(properties);
   return ret;
}
