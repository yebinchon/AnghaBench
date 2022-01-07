
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef scalar_t__ GLint ;


 int GL_INFO_LOG_LENGTH ;
 int RARCH_LOG (char*,char*) ;
 int free (char*) ;
 int glGetShaderInfoLog (int ,scalar_t__,scalar_t__*,char*) ;
 int glGetShaderiv (int ,int ,scalar_t__*) ;
 scalar_t__ malloc (scalar_t__) ;

__attribute__((used)) static void gl_glsl_print_shader_log(GLuint obj)
{
   char *info_log = ((void*)0);
   GLint max_len, info_len = 0;

   glGetShaderiv(obj, GL_INFO_LOG_LENGTH, &max_len);

   if (max_len == 0)
      return;

   info_log = (char*)malloc(max_len);
   if (!info_log)
      return;

   glGetShaderInfoLog(obj, max_len, &info_len, info_log);

   if (info_len > 0)
      RARCH_LOG("Shader log: %s\n", info_log);

   free(info_log);
}
