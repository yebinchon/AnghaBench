
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VkExtensionProperties ;


 int RARCH_ERR (char*) ;
 scalar_t__ VK_SUCCESS ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 scalar_t__ vkEnumerateInstanceExtensionProperties (int *,int*,int *) ;
 int vulkan_find_extensions (char const**,unsigned int,int *,int) ;

__attribute__((used)) static bool vulkan_find_instance_extensions(const char **exts, unsigned num_exts)
{
   uint32_t property_count;
   bool ret = 1;
   VkExtensionProperties *properties = ((void*)0);

   if (vkEnumerateInstanceExtensionProperties(((void*)0), &property_count, ((void*)0)) != VK_SUCCESS)
      return 0;

   properties = (VkExtensionProperties*)malloc(property_count * sizeof(*properties));
   if (!properties)
   {
      ret = 0;
      goto end;
   }

   if (vkEnumerateInstanceExtensionProperties(((void*)0), &property_count, properties) != VK_SUCCESS)
   {
      ret = 0;
      goto end;
   }

   if (!vulkan_find_extensions(exts, num_exts, properties, property_count))
   {
      RARCH_ERR("[Vulkan]: Could not find instance extensions. Will attempt without them.\n");
      ret = 0;
      goto end;
   }

end:
   free(properties);
   return ret;
}
