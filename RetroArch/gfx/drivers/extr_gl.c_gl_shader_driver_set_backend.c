
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shader_backend_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int RARCH_ERR (char*,int,int) ;
 int RARCH_LOG (char*) ;


 int gl2_get_fallback_shader_type (int) ;
 int const gl_cg_backend ;
 int const gl_glsl_backend ;

__attribute__((used)) static const shader_backend_t *gl_shader_driver_set_backend(
      enum rarch_shader_type type)
{
   enum rarch_shader_type fallback = gl2_get_fallback_shader_type(type);
   if (fallback != type)
      RARCH_ERR("[Shader driver]: Shader backend %d not supported, falling back to %d.", type, fallback);

   switch (fallback)
   {
      default:
         RARCH_LOG("[Shader driver]: No supported shader backend.\n");
         return ((void*)0);
   }
}
