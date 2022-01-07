
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
const char *video_shader_to_str(enum rarch_shader_type type)
{
   switch (type)
   {
      case 133:
         return "Cg";
      case 131:
         return "HLSL";
      case 132:
         return "GLSL";
      case 128:
         return "Slang";
      case 130:
         return "Metal";
      case 129:
         return "none";
      default:
         break;
   }

   return "???";
}
