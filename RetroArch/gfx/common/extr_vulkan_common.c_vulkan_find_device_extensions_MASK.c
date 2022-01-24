#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  VkPhysicalDevice ;
typedef  int /*<<< orphan*/  VkExtensionProperties ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ VK_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const**,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const**,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC6(VkPhysicalDevice gpu,
      const char **enabled, unsigned *enabled_count,
      const char **exts, unsigned num_exts,
      const char **optional_exts, unsigned num_optional_exts)
{
   uint32_t property_count;
   unsigned i;
   bool ret                          = true;
   VkExtensionProperties *properties = NULL;

   if (FUNC4(gpu, NULL, &property_count, NULL) != VK_SUCCESS)
      return false;

   properties = (VkExtensionProperties*)FUNC2(property_count * sizeof(*properties));
   if (!properties)
   {
      ret = false;
      goto end;
   }

   if (FUNC4(gpu, NULL, &property_count, properties) != VK_SUCCESS)
   {
      ret = false;
      goto end;
   }

   if (!FUNC5(exts, num_exts, properties, property_count))
   {
      FUNC0("[Vulkan]: Could not find device extension. Will attempt without it.\n");
      ret = false;
      goto end;
   }

   FUNC3((void*)enabled, exts, num_exts * sizeof(*exts));
   *enabled_count = num_exts;

   for (i = 0; i < num_optional_exts; i++)
      if (FUNC5(&optional_exts[i], 1, properties, property_count))
         enabled[(*enabled_count)++] = optional_exts[i];

end:
   FUNC1(properties);
   return ret;
}