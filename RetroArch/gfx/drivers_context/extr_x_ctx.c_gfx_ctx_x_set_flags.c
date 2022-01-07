
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int core_hw_context_enable; } ;
typedef TYPE_1__ gfx_ctx_x_data_t ;


 int BIT32_GET (int ,int ) ;
 int GFX_CTX_FLAGS_ADAPTIVE_VSYNC ;
 int GFX_CTX_FLAGS_GL_CORE_CONTEXT ;
 int GFX_CTX_FLAGS_MULTISAMPLING ;



 int x_adaptive_vsync ;
 int x_api ;
 int x_enable_msaa ;

__attribute__((used)) static void gfx_ctx_x_set_flags(void *data, uint32_t flags)
{
   gfx_ctx_x_data_t *x = (gfx_ctx_x_data_t*)data;

   switch (x_api)
   {
      case 129:
      case 128:
         if (BIT32_GET(flags, GFX_CTX_FLAGS_ADAPTIVE_VSYNC))
               x_adaptive_vsync = 1;
         if (BIT32_GET(flags, GFX_CTX_FLAGS_GL_CORE_CONTEXT))
            x->core_hw_context_enable = 1;
         if (BIT32_GET(flags, GFX_CTX_FLAGS_MULTISAMPLING))
            x_enable_msaa = 1;
         break;
      case 130:
      default:
         break;
   }
}
