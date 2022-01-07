
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int core_context_enabled; } ;
struct TYPE_9__ {int shader_type; char const* path; int shader_data; int * shader; TYPE_3__* data; TYPE_1__ gl; } ;
typedef TYPE_2__ video_shader_ctx_init_t ;
struct retro_hw_render_callback {int version_minor; int version_major; } ;
struct TYPE_10__ {int shader_data; int * shader; int core_context_in_use; } ;
typedef TYPE_3__ gl_t ;
struct TYPE_11__ {int get_proc_address; } ;
typedef TYPE_4__ gfx_ctx_driver_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;


 int RARCH_ERR (char*) ;
 int RARCH_SHADER_GLSL ;
 int RARCH_SHADER_NONE ;
 int RARCH_WARN (char*,char const*,int ,int ) ;
 int gl2_get_fallback_shader_type (int) ;
 int gl_glsl_set_context_type (int ,int ,int ) ;
 int gl_glsl_set_get_proc_address (int ) ;
 int gl_shader_driver_init (TYPE_2__*) ;
 char* retroarch_get_shader_preset () ;
 int string_is_empty (char const*) ;
 int video_shader_parse_type (char const*) ;
 int video_shader_to_str (int) ;

__attribute__((used)) static bool gl2_shader_init(gl_t *gl, const gfx_ctx_driver_t *ctx_driver,
      struct retro_hw_render_callback *hwr
      )
{
   video_shader_ctx_init_t init_data;
   bool ret = 0;
   const char *shader_path = retroarch_get_shader_preset();
   enum rarch_shader_type parse_type = video_shader_parse_type(shader_path);
   enum rarch_shader_type type;

   type = gl2_get_fallback_shader_type(parse_type);

   if (type == RARCH_SHADER_NONE)
   {
      RARCH_ERR("[GL]: Couldn't find any supported shader backend! Continuing without shaders.\n");
      return 1;
   }

   if (type != parse_type)
   {
      if (!string_is_empty(shader_path))
         RARCH_WARN("[GL] Shader preset %s is using unsupported shader type %s, falling back to stock %s.\n",
            shader_path, video_shader_to_str(parse_type), video_shader_to_str(type));

      shader_path = ((void*)0);
   }
   init_data.gl.core_context_enabled = gl->core_context_in_use;
   init_data.shader_type = type;
   init_data.shader = ((void*)0);
   init_data.data = gl;
   init_data.path = shader_path;

   if (gl_shader_driver_init(&init_data))
   {
      gl->shader = init_data.shader;
      gl->shader_data = init_data.shader_data;
      return 1;
   }

   RARCH_ERR("[GL]: Failed to initialize shader, falling back to stock.\n");

   init_data.shader = ((void*)0);
   init_data.path = ((void*)0);

   ret = gl_shader_driver_init(&init_data);

   gl->shader = init_data.shader;
   gl->shader_data = init_data.shader_data;

   return ret;
}
