
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int g_core_es; int core_hw_context_enable; } ;
typedef TYPE_1__ gfx_ctx_x_data_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_ADAPTIVE_VSYNC ;
 int GFX_CTX_FLAGS_GL_CORE_CONTEXT ;
 int GFX_CTX_FLAGS_MULTISAMPLING ;
 int GFX_CTX_FLAGS_SHADERS_CG ;
 int GFX_CTX_FLAGS_SHADERS_GLSL ;
 int GFX_CTX_FLAGS_SHADERS_SLANG ;




 int string_is_equal (int ,char*) ;
 int video_driver_get_ident () ;
 int x_adaptive_vsync ;
 int x_api ;
 int x_enable_msaa ;

__attribute__((used)) static uint32_t gfx_ctx_x_get_flags(void *data)
{
   uint32_t flags = 0;
   gfx_ctx_x_data_t *x = (gfx_ctx_x_data_t*)data;

   switch (x_api)
   {
      case 130:
      case 129:
         if (x_adaptive_vsync)
            BIT32_SET(flags, GFX_CTX_FLAGS_ADAPTIVE_VSYNC);

         if (x->core_hw_context_enable || x->g_core_es)
            BIT32_SET(flags, GFX_CTX_FLAGS_GL_CORE_CONTEXT);

         if (x_enable_msaa)
            BIT32_SET(flags, GFX_CTX_FLAGS_MULTISAMPLING);

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
      case 131:
      default:
         break;
   }

   return flags;
}
