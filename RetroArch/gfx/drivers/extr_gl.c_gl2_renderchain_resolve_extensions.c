
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int video_info_t ;
struct TYPE_9__ {int video_force_srgb_disable; } ;
struct TYPE_11__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_12__ {int ctx_data; TYPE_2__* ctx_driver; int hw_render_use; } ;
typedef TYPE_4__ gl_t ;
struct TYPE_13__ {int has_srgb_fbo; int egl_images; void* has_srgb_fbo_gles3; void* has_fp_fbo; } ;
typedef TYPE_5__ gl2_renderchain_data_t ;
struct TYPE_10__ {scalar_t__ (* image_buffer_init ) (int ,int const*) ;} ;


 int GL_CAPS_EGLIMAGE ;
 int GL_CAPS_FP_FBO ;
 int GL_CAPS_SRGB_FBO ;
 int GL_CAPS_SRGB_FBO_ES3 ;
 TYPE_3__* config_get_ptr () ;
 void* gl_check_capability (int ) ;
 scalar_t__ stub1 (int ,int const*) ;

__attribute__((used)) static void gl2_renderchain_resolve_extensions(gl_t *gl,
      gl2_renderchain_data_t *chain,
      const char *context_ident,
      const video_info_t *video)
{
   settings_t *settings = config_get_ptr();

   if (!chain)
      return;

   chain->has_srgb_fbo = 0;
   chain->has_fp_fbo = gl_check_capability(GL_CAPS_FP_FBO);

   chain->has_srgb_fbo_gles3 = gl_check_capability(GL_CAPS_SRGB_FBO_ES3);

   if (!settings->bools.video_force_srgb_disable)
      chain->has_srgb_fbo = gl_check_capability(GL_CAPS_SRGB_FBO);


   chain->egl_images = !gl->hw_render_use
      && gl_check_capability(GL_CAPS_EGLIMAGE)
      && gl->ctx_driver->image_buffer_init
      && gl->ctx_driver->image_buffer_init(gl->ctx_data, video);
}
