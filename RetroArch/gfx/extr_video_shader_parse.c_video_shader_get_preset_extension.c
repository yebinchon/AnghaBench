
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;







const char *video_shader_get_preset_extension(enum rarch_shader_type type)
{
   switch (type)
   {
      case 130:
         return ".glslp";
      case 128:
         return ".slangp";
      case 129:
      case 131:
         return ".cgp";
      default:
         break;
   }

   return ((void*)0);
}
