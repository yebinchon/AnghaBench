
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;


 int GL_LINEAR ;

 int GL_NEAREST ;


__attribute__((used)) static GLenum gl2_min_filter_to_mag(GLenum type)
{
   switch (type)
   {
      case 129:
         return GL_LINEAR;
      case 128:
         return GL_NEAREST;
      default:
         break;
   }

   return type;
}
