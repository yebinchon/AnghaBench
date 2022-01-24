#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * filter_chain; } ;
typedef  TYPE_1__ gl_core_t ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int RARCH_SHADER_SLANG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static bool FUNC7(void *data,
                               enum rarch_shader_type type, const char *path)
{
   gl_core_t *gl = (gl_core_t *)data;
   if (!gl)
      return false;

   FUNC2(gl, false);

   if (gl->filter_chain)
      FUNC3(gl->filter_chain);
   gl->filter_chain = NULL;

   if (!FUNC6(path) && type != RARCH_SHADER_SLANG)
   {
      FUNC1("[GLCore]: Only Slang shaders are supported. Falling back to stock.\n");
      path = NULL;
   }

   if (FUNC6(path))
   {
      FUNC4(gl);
      FUNC2(gl, true);
      return true;
   }

   if (!FUNC5(gl, path))
   {
      FUNC0("[GLCore]: Failed to create filter chain: \"%s\". Falling back to stock.\n", path);
      FUNC4(gl);
      FUNC2(gl, true);
      return false;
   }

   FUNC2(gl, true);
   return true;
}