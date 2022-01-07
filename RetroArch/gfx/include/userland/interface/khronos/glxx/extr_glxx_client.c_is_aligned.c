
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;



 int GL_FALSE ;



 int GL_TRUE ;


 int UNREACHABLE () ;

__attribute__((used)) static bool is_aligned( GLenum type, size_t value)
{
   switch (type) {
   case 133:
   case 129:
      return GL_TRUE;
   case 130:
   case 128:
      return (value & 1) == 0;
   case 132:
   case 131:
      return (value & 3) == 0;
   default:
      UNREACHABLE();
      return GL_FALSE;
   }
}
