
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_ADAPTIVE_VSYNC ;
 int GFX_CTX_FLAGS_GL_CORE_CONTEXT ;
 int GFX_CTX_FLAGS_SHADERS_CG ;
 int GFX_CTX_FLAGS_SHADERS_GLSL ;
 int GFX_CTX_FLAGS_SHADERS_SLANG ;



 int string_is_equal (int ,char*) ;
 int video_driver_get_ident () ;
 int wgl_adaptive_vsync ;
 int win32_api ;
 int win32_core_hw_context_enable ;

__attribute__((used)) static uint32_t gfx_ctx_wgl_get_flags(void *data)
{
   uint32_t flags = 0;

   switch (win32_api)
   {
      case 129:
         if (wgl_adaptive_vsync)
            BIT32_SET(flags, GFX_CTX_FLAGS_ADAPTIVE_VSYNC);

         if (win32_core_hw_context_enable)
            BIT32_SET(flags, GFX_CTX_FLAGS_GL_CORE_CONTEXT);

         if (string_is_equal(video_driver_get_ident(), "gl1")) { }
         else if (string_is_equal(video_driver_get_ident(), "glcore"))
         {



         }
         else
         {







         }

         break;
      case 128:



         break;
      case 130:
      default:
         break;
   }

   return flags;
}
