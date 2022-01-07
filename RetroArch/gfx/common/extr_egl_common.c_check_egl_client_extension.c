
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_EXTENSIONS ;
 int EGL_NO_DISPLAY ;
 char* eglQueryString (int ,int ) ;
 size_t strcspn (char const*,char*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 int strspn (char const*,char*) ;

bool check_egl_client_extension(const char *name)
{
   size_t nameLen;
   const char *str = eglQueryString(EGL_NO_DISPLAY, EGL_EXTENSIONS);


   if (!str)
      return 0;

   nameLen = strlen(name);
   while (*str != '\0')
   {



      size_t len = strcspn(str, " ");
      if (len == nameLen && strncmp(str, name, nameLen) == 0)
         return 1;
      str += len;
      str += strspn(str, " ");
   }

   return 0;
}
