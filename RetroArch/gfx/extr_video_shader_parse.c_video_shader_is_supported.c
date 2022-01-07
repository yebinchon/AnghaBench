
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; } ;
typedef TYPE_1__ gfx_ctx_flags_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
typedef enum display_flags { ____Placeholder_display_flags } display_flags ;


 int BIT32_GET (scalar_t__,int) ;
 int GFX_CTX_FLAGS_NONE ;
 int GFX_CTX_FLAGS_SHADERS_CG ;
 int GFX_CTX_FLAGS_SHADERS_GLSL ;
 int GFX_CTX_FLAGS_SHADERS_HLSL ;
 int GFX_CTX_FLAGS_SHADERS_SLANG ;





 int video_context_driver_get_flags (TYPE_1__*) ;

bool video_shader_is_supported(enum rarch_shader_type type)
{
   gfx_ctx_flags_t flags;
   enum display_flags testflag = GFX_CTX_FLAGS_NONE;

   flags.flags = 0;

   switch (type)
   {
      case 128:
         testflag = GFX_CTX_FLAGS_SHADERS_SLANG;
         break;
      case 131:
         testflag = GFX_CTX_FLAGS_SHADERS_GLSL;
         break;
      case 132:
         testflag = GFX_CTX_FLAGS_SHADERS_CG;
         break;
      case 130:
         testflag = GFX_CTX_FLAGS_SHADERS_HLSL;
         break;
      case 129:
      default:
         return 0;
   }
   video_context_driver_get_flags(&flags);

   return BIT32_GET(flags.flags, testflag);
}
