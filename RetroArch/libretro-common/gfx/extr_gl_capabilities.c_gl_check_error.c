
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int glGetError () ;
 char* strdup (char*) ;

bool gl_check_error(char **error_string)
{
   int error = glGetError();
   switch (error)
   {
      case 132:
         *error_string = strdup("GL: Invalid enum.");
         break;
      case 130:
         *error_string = strdup("GL: Invalid value.");
         break;
      case 131:
         *error_string = strdup("GL: Invalid operation.");
         break;
      case 128:
         *error_string = strdup("GL: Out of memory.");
         break;
      case 129:
         return 1;
      default:
         *error_string = strdup("Non specified GL error.");
         break;
   }

   return 0;
}
