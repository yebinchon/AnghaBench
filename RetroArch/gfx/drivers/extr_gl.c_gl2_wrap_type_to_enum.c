
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_wrap_type { ____Placeholder_gfx_wrap_type } gfx_wrap_type ;


 int GL_CLAMP_TO_BORDER ;
 int GL_CLAMP_TO_EDGE ;
 int GL_MIRRORED_REPEAT ;
 int GL_REPEAT ;





__attribute__((used)) static unsigned gl2_wrap_type_to_enum(enum gfx_wrap_type type)
{
   switch (type)
   {

      case 131:
         return GL_CLAMP_TO_BORDER;



      case 130:
         return GL_CLAMP_TO_EDGE;
      case 128:
         return GL_REPEAT;
      case 129:
         return GL_MIRRORED_REPEAT;
      default:
  break;
   }

   return 0;
}
