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
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int RARCH_SHADER_CG ; 
 int RARCH_SHADER_GLSL ; 
 int RARCH_SHADER_NONE ; 
 int RARCH_SHADER_SLANG ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 

enum rarch_shader_type FUNC3(const char *ext,
      bool *is_preset)
{
   if (FUNC0(ext))
      return RARCH_SHADER_NONE;

   if (FUNC2(ext) > 1 && ext[0] == '.')
      ext++;

   if (is_preset)
      *is_preset =
         FUNC1(ext, "cgp")   ||
         FUNC1(ext, "glslp") ||
         FUNC1(ext, "slangp");

   if (FUNC1(ext, "cgp") ||
       FUNC1(ext, "cg")
      )
      return RARCH_SHADER_CG;

   if (FUNC1(ext, "glslp") ||
       FUNC1(ext, "glsl")
      )
      return RARCH_SHADER_GLSL;

   if (FUNC1(ext, "slangp") ||
       FUNC1(ext, "slang")
      )
      return RARCH_SHADER_SLANG;

   return RARCH_SHADER_NONE;
}