
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;



 int GL_RGB565 ;

 int GL_RGBA8 ;
 int GL_RGBA8_OES ;

__attribute__((used)) static void gl2_size_format(GLint* internalFormat)
{

   switch (*internalFormat)
   {
      case 129:

         *internalFormat = GL_RGB565;
         break;
      case 128:



         *internalFormat = GL_RGBA8;

         break;
   }

}
