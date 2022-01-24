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
typedef  int /*<<< orphan*/  vk_t ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RARCH_SHADER_SLANG ; 
 char* FUNC1 () ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static bool FUNC6(vk_t *vk)
{
   const char     *shader_path = FUNC1();
   enum rarch_shader_type type = FUNC3(shader_path);

   if (FUNC2(shader_path))
   {
      FUNC0("[Vulkan]: Loading stock shader.\n");
      return FUNC4(vk);
   }

   if (type != RARCH_SHADER_SLANG)
   {
      FUNC0("[Vulkan]: Only Slang shaders are supported, falling back to stock.\n");
      return FUNC4(vk);
   }

   if (!shader_path || !FUNC5(vk, shader_path))
      FUNC4(vk);

   return true;
}