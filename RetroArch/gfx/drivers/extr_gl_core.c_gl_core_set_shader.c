
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * filter_chain; } ;
typedef TYPE_1__ gl_core_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int RARCH_ERR (char*,char const*) ;
 int RARCH_SHADER_SLANG ;
 int RARCH_WARN (char*) ;
 int gl_core_context_bind_hw_render (TYPE_1__*,int) ;
 int gl_core_filter_chain_free (int *) ;
 int gl_core_init_default_filter_chain (TYPE_1__*) ;
 int gl_core_init_filter_chain_preset (TYPE_1__*,char const*) ;
 scalar_t__ string_is_empty (char const*) ;

__attribute__((used)) static bool gl_core_set_shader(void *data,
                               enum rarch_shader_type type, const char *path)
{
   gl_core_t *gl = (gl_core_t *)data;
   if (!gl)
      return 0;

   gl_core_context_bind_hw_render(gl, 0);

   if (gl->filter_chain)
      gl_core_filter_chain_free(gl->filter_chain);
   gl->filter_chain = ((void*)0);

   if (!string_is_empty(path) && type != RARCH_SHADER_SLANG)
   {
      RARCH_WARN("[GLCore]: Only Slang shaders are supported. Falling back to stock.\n");
      path = ((void*)0);
   }

   if (string_is_empty(path))
   {
      gl_core_init_default_filter_chain(gl);
      gl_core_context_bind_hw_render(gl, 1);
      return 1;
   }

   if (!gl_core_init_filter_chain_preset(gl, path))
   {
      RARCH_ERR("[GLCore]: Failed to create filter chain: \"%s\". Falling back to stock.\n", path);
      gl_core_init_default_filter_chain(gl);
      gl_core_context_bind_hw_render(gl, 1);
      return 0;
   }

   gl_core_context_bind_hw_render(gl, 1);
   return 1;
}
