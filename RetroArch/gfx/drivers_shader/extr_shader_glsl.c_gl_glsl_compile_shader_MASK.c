#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  version ;
struct TYPE_3__ {char* alias_define; } ;
typedef  TYPE_1__ glsl_shader_data_t ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 scalar_t__ GL_TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ glsl_core ; 
 int glsl_major ; 
 int glsl_minor ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,unsigned int,...) ; 
 char* FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char**,int) ; 

__attribute__((used)) static bool FUNC9(glsl_shader_data_t *glsl,
      GLuint shader,
      const char *define, const char *program)
{
   GLint status;
   const char *source[4];
   char version[32];
   const char *existing_version = FUNC7(program, "#version");

   version[0]                   = '\0';

   if (existing_version)
   {
      const char* version_extra = "";
      unsigned version_no = (unsigned)FUNC8(existing_version + 8, (char**)&program, 10);
#ifdef HAVE_OPENGLES
      if (version_no < 130)
         version_no = 100;
      else
      {
         version_extra = " es";
         version_no = 300;
      }
#endif
      FUNC6(version, sizeof(version), "#version %u%s\n", version_no, version_extra);
      FUNC1("[GLSL]: Using GLSL version %u%s.\n", version_no, version_extra);
   }
   else if (glsl_core)
   {
      unsigned version_no = 0;
      unsigned gl_ver = glsl_major * 100 + glsl_minor * 10;

      switch (gl_ver)
      {
         case 300:
            version_no = 130;
            break;
         case 310:
            version_no = 140;
            break;
         case 320:
            version_no = 150;
            break;
         default:
            version_no = gl_ver;
            break;
      }

      FUNC6(version, sizeof(version), "#version %u\n", version_no);
      FUNC1("[GLSL]: Using GLSL version %u.\n", version_no);
   }

   source[0] = version;
   source[1] = define;
   source[2] = glsl->alias_define;
   source[3] = program;

   FUNC4(shader, FUNC0(source), source, NULL);
   FUNC2(shader);

   FUNC3(shader, GL_COMPILE_STATUS, &status);
   FUNC5(shader);

   return status == GL_TRUE;
}