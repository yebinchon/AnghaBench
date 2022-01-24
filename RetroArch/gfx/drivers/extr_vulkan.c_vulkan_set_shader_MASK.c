#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vulkan_filter_chain_t ;
struct TYPE_4__ {int /*<<< orphan*/ * filter_chain; } ;
typedef  TYPE_1__ vk_t ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int RARCH_SHADER_SLANG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 

__attribute__((used)) static bool FUNC6(void *data,
      enum rarch_shader_type type, const char *path)
{
   vk_t *vk = (vk_t*)data;
   if (!vk)
      return false;

   if (vk->filter_chain)
      FUNC3((vulkan_filter_chain_t*)vk->filter_chain);
   vk->filter_chain = NULL;

   if (!FUNC2(path) && type != RARCH_SHADER_SLANG)
   {
      FUNC1("[Vulkan]: Only Slang shaders are supported. Falling back to stock.\n");
      path = NULL;
   }

   if (FUNC2(path))
   {
      FUNC4(vk);
      return true;
   }

   if (!FUNC5(vk, path))
   {
      FUNC0("[Vulkan]: Failed to create filter chain: \"%s\". Falling back to stock.\n", path);
      FUNC4(vk);
      return false;
   }

   return true;
}