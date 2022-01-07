
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_SHADERS_GLSL ;
 int GFX_CTX_FLAGS_SHADERS_SLANG ;




 int android_api ;

__attribute__((used)) static uint32_t android_gfx_ctx_get_flags(void *data)
{
   uint32_t flags = 0;

   switch (android_api)
   {
      case 130:
      case 129:



         break;
      case 128:



         break;
      case 131:
      default:
         break;
   }

   return flags;
}
