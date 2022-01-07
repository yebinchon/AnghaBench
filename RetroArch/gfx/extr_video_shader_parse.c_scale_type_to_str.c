
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_scale_type { ____Placeholder_gfx_scale_type } gfx_scale_type ;






__attribute__((used)) static const char *scale_type_to_str(enum gfx_scale_type type)
{
   switch (type)
   {
      case 129:
         return "source";
      case 128:
         return "viewport";
      case 130:
         return "absolute";
      default:
         break;
   }

   return "?";
}
