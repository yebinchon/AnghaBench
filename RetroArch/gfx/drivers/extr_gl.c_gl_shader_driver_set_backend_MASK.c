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
typedef  int /*<<< orphan*/  shader_backend_t ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  RARCH_SHADER_CG 129 
#define  RARCH_SHADER_GLSL 128 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  const gl_cg_backend ; 
 int /*<<< orphan*/  const gl_glsl_backend ; 

__attribute__((used)) static const shader_backend_t *FUNC3(
      enum rarch_shader_type type)
{
   enum rarch_shader_type fallback = FUNC2(type);
   if (fallback != type)
      FUNC0("[Shader driver]: Shader backend %d not supported, falling back to %d.", type, fallback);

   switch (fallback)
   {
#ifdef HAVE_CG
      case RARCH_SHADER_CG:
         RARCH_LOG("[Shader driver]: Using Cg shader backend.\n");
         return &gl_cg_backend;
#endif
#ifdef HAVE_GLSL
      case RARCH_SHADER_GLSL:
         RARCH_LOG("[Shader driver]: Using GLSL shader backend.\n");
         return &gl_glsl_backend;
#endif
      default:
         FUNC1("[Shader driver]: No supported shader backend.\n");
         return NULL;
   }
}