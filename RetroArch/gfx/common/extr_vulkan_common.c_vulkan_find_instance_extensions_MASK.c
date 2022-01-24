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
typedef  int /*<<< orphan*/  VkExtensionProperties ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ VK_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,unsigned int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC5(const char **exts, unsigned num_exts)
{
   uint32_t property_count;
   bool ret                          = true;
   VkExtensionProperties *properties = NULL;

   if (FUNC3(NULL, &property_count, NULL) != VK_SUCCESS)
      return false;

   properties = (VkExtensionProperties*)FUNC2(property_count * sizeof(*properties));
   if (!properties)
   {
      ret = false;
      goto end;
   }

   if (FUNC3(NULL, &property_count, properties) != VK_SUCCESS)
   {
      ret = false;
      goto end;
   }

   if (!FUNC4(exts, num_exts, properties, property_count))
   {
      FUNC0("[Vulkan]: Could not find instance extensions. Will attempt without them.\n");
      ret = false;
      goto end;
   }

end:
   FUNC1(properties);
   return ret;
}