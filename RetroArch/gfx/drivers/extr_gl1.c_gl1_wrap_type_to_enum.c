
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_wrap_type { ____Placeholder_gfx_wrap_type } gfx_wrap_type ;


 int GL_CLAMP ;
 int GL_REPEAT ;



__attribute__((used)) static unsigned gl1_wrap_type_to_enum(enum gfx_wrap_type type)
{
   switch (type)
   {
      case 128:
      case 129:
         return GL_REPEAT;
      default:
         return GL_CLAMP;
   }

   return 0;
}
