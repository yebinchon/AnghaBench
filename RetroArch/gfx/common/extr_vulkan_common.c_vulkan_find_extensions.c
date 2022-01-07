
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extensionName; } ;
typedef TYPE_1__ VkExtensionProperties ;


 scalar_t__ string_is_equal (char const*,int ) ;

__attribute__((used)) static bool vulkan_find_extensions(const char **exts, unsigned num_exts,
      const VkExtensionProperties *properties, unsigned property_count)
{
   unsigned i, ext;
   bool found;
   for (ext = 0; ext < num_exts; ext++)
   {
      found = 0;
      for (i = 0; i < property_count; i++)
      {
         if (string_is_equal(exts[ext], properties[i].extensionName))
         {
            found = 1;
            break;
         }
      }

      if (!found)
         return 0;
   }
   return 1;
}
