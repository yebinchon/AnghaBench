
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; } ;
typedef TYPE_1__ gfx_ctx_flags_t ;


 scalar_t__ BIT32_GET (scalar_t__,int ) ;
 int GFX_CTX_FLAGS_SHADERS_CG ;
 int GFX_CTX_FLAGS_SHADERS_GLSL ;
 int GFX_CTX_FLAGS_SHADERS_HLSL ;
 int GFX_CTX_FLAGS_SHADERS_SLANG ;
 int video_context_driver_get_flags (TYPE_1__*) ;

bool video_shader_any_supported(void)
{
   gfx_ctx_flags_t flags;
   flags.flags = 0;
   video_context_driver_get_flags(&flags);

   return
      BIT32_GET(flags.flags, GFX_CTX_FLAGS_SHADERS_SLANG) ||
      BIT32_GET(flags.flags, GFX_CTX_FLAGS_SHADERS_GLSL) ||
      BIT32_GET(flags.flags, GFX_CTX_FLAGS_SHADERS_CG) ||
      BIT32_GET(flags.flags, GFX_CTX_FLAGS_SHADERS_HLSL);
}
