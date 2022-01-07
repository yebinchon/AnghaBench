
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gl_core_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int RARCH_LOG (char*) ;
 int RARCH_SHADER_SLANG ;
 int RARCH_WARN (char*) ;
 int gl_core_init_default_filter_chain (int *) ;
 int gl_core_init_filter_chain_preset (int *,char const*) ;
 char* retroarch_get_shader_preset () ;
 scalar_t__ string_is_empty (char const*) ;
 int video_shader_parse_type (char const*) ;

__attribute__((used)) static bool gl_core_init_filter_chain(gl_core_t *gl)
{
   const char *shader_path = retroarch_get_shader_preset();
   enum rarch_shader_type type = video_shader_parse_type(shader_path);

   if (string_is_empty(shader_path))
   {
      RARCH_LOG("[GLCore]: Loading stock shader.\n");
      return gl_core_init_default_filter_chain(gl);
   }

   if (type != RARCH_SHADER_SLANG)
   {
      RARCH_WARN("[GLCore]: Only Slang shaders are supported, falling back to stock.\n");
      return gl_core_init_default_filter_chain(gl);
   }

   if (!gl_core_init_filter_chain_preset(gl, shader_path))
      gl_core_init_default_filter_chain(gl);

   return 1;
}
