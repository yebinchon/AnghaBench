
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_BLACK_FRAME_INSERTION ;
 int GFX_CTX_FLAGS_MENU_FRAME_FILTERING ;
 int GFX_CTX_FLAGS_SHADERS_CG ;
 int GFX_CTX_FLAGS_SHADERS_HLSL ;
 scalar_t__ RARCH_SHADER_CG ;
 scalar_t__ RARCH_SHADER_HLSL ;
 scalar_t__ supported_shader_type ;

__attribute__((used)) static uint32_t d3d9_get_flags(void *data)
{
   uint32_t flags = 0;

   BIT32_SET(flags, GFX_CTX_FLAGS_BLACK_FRAME_INSERTION);
   BIT32_SET(flags, GFX_CTX_FLAGS_MENU_FRAME_FILTERING);

   if (supported_shader_type == RARCH_SHADER_CG)
      BIT32_SET(flags, GFX_CTX_FLAGS_SHADERS_CG);
   else if (supported_shader_type == RARCH_SHADER_HLSL)
      BIT32_SET(flags, GFX_CTX_FLAGS_SHADERS_HLSL);

   return flags;
}
