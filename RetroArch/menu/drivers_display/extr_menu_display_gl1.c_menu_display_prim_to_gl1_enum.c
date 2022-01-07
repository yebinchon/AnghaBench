
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum menu_display_prim_type { ____Placeholder_menu_display_prim_type } menu_display_prim_type ;
typedef int GLenum ;


 int GL_TRIANGLES ;
 int GL_TRIANGLE_STRIP ;




__attribute__((used)) static GLenum menu_display_prim_to_gl1_enum(
      enum menu_display_prim_type type)
{
   switch (type)
   {
      case 128:
         return GL_TRIANGLE_STRIP;
      case 129:
         return GL_TRIANGLES;
      case 130:
      default:
         break;
   }

   return 0;
}
