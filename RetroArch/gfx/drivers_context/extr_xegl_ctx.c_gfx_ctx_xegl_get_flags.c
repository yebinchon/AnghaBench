
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_SHADERS_GLSL ;
 int GFX_CTX_FLAGS_SHADERS_SLANG ;
 scalar_t__ string_is_equal (int ,char*) ;
 int video_driver_get_ident () ;

__attribute__((used)) static uint32_t gfx_ctx_xegl_get_flags(void *data)
{
   uint32_t flags = 0;

   if (string_is_equal(video_driver_get_ident(), "glcore"))
   {



   }
   else
   {
      BIT32_SET(flags, GFX_CTX_FLAGS_SHADERS_GLSL);
   }

   return flags;
}
