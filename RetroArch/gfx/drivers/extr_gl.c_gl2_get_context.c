
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct retro_hw_render_callback {unsigned int version_major; unsigned int version_minor; scalar_t__ context_type; } ;
struct TYPE_9__ {int video_context_driver; } ;
struct TYPE_8__ {scalar_t__ video_shared_context; } ;
struct TYPE_10__ {TYPE_2__ arrays; TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_11__ {void* ctx_data; } ;
typedef TYPE_4__ gl_t ;
typedef int gfx_ctx_driver_t ;
typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int GFX_CTX_OPENGL_API ;
 int GFX_CTX_OPENGL_ES_API ;
 scalar_t__ RETRO_HW_CONTEXT_NONE ;
 scalar_t__ RETRO_HW_CONTEXT_OPENGLES3 ;
 scalar_t__ RETRO_HW_CONTEXT_OPENGLES_VERSION ;
 TYPE_3__* config_get_ptr () ;
 int gl_shared_context_use ;
 scalar_t__ libretro_get_shared_context () ;
 int * video_context_driver_init_first (TYPE_4__*,int ,int,unsigned int,unsigned int,int,void**) ;
 struct retro_hw_render_callback* video_driver_get_hw_context () ;

__attribute__((used)) static const gfx_ctx_driver_t *gl2_get_context(gl_t *gl)
{
   enum gfx_ctx_api api;
   const gfx_ctx_driver_t *gfx_ctx = ((void*)0);
   void *ctx_data = ((void*)0);
   const char *api_name = ((void*)0);
   settings_t *settings = config_get_ptr();
   struct retro_hw_render_callback *hwr = video_driver_get_hw_context();
   unsigned major = hwr->version_major;
   unsigned minor = hwr->version_minor;
   api = GFX_CTX_OPENGL_API;
   api_name = "OpenGL";


   (void)api_name;

   gl_shared_context_use = settings->bools.video_shared_context
      && hwr->context_type != RETRO_HW_CONTEXT_NONE;

   if ( (libretro_get_shared_context())
         && (hwr->context_type != RETRO_HW_CONTEXT_NONE))
      gl_shared_context_use = 1;

   gfx_ctx = video_context_driver_init_first(gl,
         settings->arrays.video_context_driver,
         api, major, minor, gl_shared_context_use, &ctx_data);

   if (ctx_data)
      gl->ctx_data = ctx_data;

   return gfx_ctx;
}
