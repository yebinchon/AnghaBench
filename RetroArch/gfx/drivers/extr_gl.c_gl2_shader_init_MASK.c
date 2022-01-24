#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  core_context_enabled; } ;
struct TYPE_9__ {int shader_type; char const* path; int /*<<< orphan*/  shader_data; int /*<<< orphan*/ * shader; TYPE_3__* data; TYPE_1__ gl; } ;
typedef  TYPE_2__ video_shader_ctx_init_t ;
struct retro_hw_render_callback {int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; } ;
struct TYPE_10__ {int /*<<< orphan*/  shader_data; int /*<<< orphan*/ * shader; int /*<<< orphan*/  core_context_in_use; } ;
typedef  TYPE_3__ gl_t ;
struct TYPE_11__ {int /*<<< orphan*/  get_proc_address; } ;
typedef  TYPE_4__ gfx_ctx_driver_t ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RARCH_SHADER_GLSL ; 
 int RARCH_SHADER_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(gl_t *gl, const gfx_ctx_driver_t *ctx_driver,
      struct retro_hw_render_callback *hwr
      )
{
   video_shader_ctx_init_t init_data;
   bool ret                          = false;
   const char *shader_path           = FUNC6();
   enum rarch_shader_type parse_type = FUNC8(shader_path);
   enum rarch_shader_type type;

   type = FUNC2(parse_type);

   if (type == RARCH_SHADER_NONE)
   {
      FUNC0("[GL]: Couldn't find any supported shader backend! Continuing without shaders.\n");
      return true;
   }

   if (type != parse_type)
   {
      if (!FUNC7(shader_path))
         FUNC1("[GL] Shader preset %s is using unsupported shader type %s, falling back to stock %s.\n",
            shader_path, FUNC9(parse_type), FUNC9(type));

      shader_path = NULL;
   }

#ifdef HAVE_GLSL
   if (type == RARCH_SHADER_GLSL)
   {
      gl_glsl_set_get_proc_address(ctx_driver->get_proc_address);
      gl_glsl_set_context_type(gl->core_context_in_use,
                               hwr->version_major, hwr->version_minor);
   }
#endif

   init_data.gl.core_context_enabled = gl->core_context_in_use;
   init_data.shader_type             = type;
   init_data.shader                  = NULL;
   init_data.data                    = gl;
   init_data.path                    = shader_path;

   if (FUNC5(&init_data))
   {
      gl->shader                     = init_data.shader;
      gl->shader_data                = init_data.shader_data;
      return true;
   }

   FUNC0("[GL]: Failed to initialize shader, falling back to stock.\n");

   init_data.shader = NULL;
   init_data.path   = NULL;

   ret              = FUNC5(&init_data);

   gl->shader       = init_data.shader;
   gl->shader_data  = init_data.shader_data;

   return ret;
}