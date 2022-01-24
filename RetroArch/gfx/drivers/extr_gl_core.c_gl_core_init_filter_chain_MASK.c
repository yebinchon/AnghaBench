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
typedef  int /*<<< orphan*/  gl_core_t ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RARCH_SHADER_SLANG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC4 () ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static bool FUNC7(gl_core_t *gl)
{
   const char *shader_path     = FUNC4();
   enum rarch_shader_type type = FUNC6(shader_path);

   if (FUNC5(shader_path))
   {
      FUNC0("[GLCore]: Loading stock shader.\n");
      return FUNC2(gl);
   }

   if (type != RARCH_SHADER_SLANG)
   {
      FUNC1("[GLCore]: Only Slang shaders are supported, falling back to stock.\n");
      return FUNC2(gl);
   }

   if (!FUNC3(gl, shader_path))
      FUNC2(gl);

   return true;
}