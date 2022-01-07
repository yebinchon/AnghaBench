
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int version ;
struct TYPE_3__ {char* alias_define; } ;
typedef TYPE_1__ glsl_shader_data_t ;
typedef int GLuint ;
typedef scalar_t__ GLint ;


 int ARRAY_SIZE (char const**) ;
 int GL_COMPILE_STATUS ;
 scalar_t__ GL_TRUE ;
 int RARCH_LOG (char*,unsigned int,...) ;
 int glCompileShader (int ) ;
 int glGetShaderiv (int ,int ,scalar_t__*) ;
 int glShaderSource (int ,int ,char const**,int *) ;
 int gl_glsl_print_shader_log (int ) ;
 scalar_t__ glsl_core ;
 int glsl_major ;
 int glsl_minor ;
 int snprintf (char*,int,char*,unsigned int,...) ;
 char* strstr (char const*,char*) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static bool gl_glsl_compile_shader(glsl_shader_data_t *glsl,
      GLuint shader,
      const char *define, const char *program)
{
   GLint status;
   const char *source[4];
   char version[32];
   const char *existing_version = strstr(program, "#version");

   version[0] = '\0';

   if (existing_version)
   {
      const char* version_extra = "";
      unsigned version_no = (unsigned)strtoul(existing_version + 8, (char**)&program, 10);
      snprintf(version, sizeof(version), "#version %u%s\n", version_no, version_extra);
      RARCH_LOG("[GLSL]: Using GLSL version %u%s.\n", version_no, version_extra);
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

      snprintf(version, sizeof(version), "#version %u\n", version_no);
      RARCH_LOG("[GLSL]: Using GLSL version %u.\n", version_no);
   }

   source[0] = version;
   source[1] = define;
   source[2] = glsl->alias_define;
   source[3] = program;

   glShaderSource(shader, ARRAY_SIZE(source), source, ((void*)0));
   glCompileShader(shader);

   glGetShaderiv(shader, GL_COMPILE_STATUS, &status);
   gl_glsl_print_shader_log(shader);

   return status == GL_TRUE;
}
