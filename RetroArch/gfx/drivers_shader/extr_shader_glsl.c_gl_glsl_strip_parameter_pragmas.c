
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char*,char const*) ;

__attribute__((used)) static void gl_glsl_strip_parameter_pragmas(char *source, const char *str)
{


   char *s = strstr(source, str);

   while (s)
   {


      while (*s != '\0' && *s != '\n')
         *s++ = ' ';
      s = strstr(s, str);
   }
}
