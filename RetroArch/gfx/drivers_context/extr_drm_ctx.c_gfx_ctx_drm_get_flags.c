
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ core_hw_context_enable; } ;
typedef TYPE_1__ gfx_ctx_drm_data_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_CUSTOMIZABLE_SWAPCHAIN_IMAGES ;
 int GFX_CTX_FLAGS_GL_CORE_CONTEXT ;
 int GFX_CTX_FLAGS_SHADERS_GLSL ;
 int GFX_CTX_FLAGS_SHADERS_SLANG ;
 scalar_t__ string_is_equal (int ,char*) ;
 int video_driver_get_ident () ;

__attribute__((used)) static uint32_t gfx_ctx_drm_get_flags(void *data)
{
   uint32_t flags = 0;
   gfx_ctx_drm_data_t *drm = (gfx_ctx_drm_data_t*)data;

   BIT32_SET(flags, GFX_CTX_FLAGS_CUSTOMIZABLE_SWAPCHAIN_IMAGES);

   if (drm->core_hw_context_enable)
      BIT32_SET(flags, GFX_CTX_FLAGS_GL_CORE_CONTEXT);

   if (string_is_equal(video_driver_get_ident(), "glcore"))
   {



   }
   else
      BIT32_SET(flags, GFX_CTX_FLAGS_SHADERS_GLSL);

   return flags;
}
