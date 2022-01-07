
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGL_NO_DISPLAY ;
 int EGL_VERSION ;
 char* eglQueryString (int ,int ) ;
 int sscanf (char const*,char*,int*,int*) ;

bool check_egl_version(int minMajorVersion, int minMinorVersion)
{
   int count;
   int major, minor;
   const char *str = eglQueryString(EGL_NO_DISPLAY, EGL_VERSION);

   if (!str)
      return 0;

   count = sscanf(str, "%d.%d", &major, &minor);
   if (count != 2)
      return 0;

   if (major < minMajorVersion)
      return 0;

   if (major > minMajorVersion)
      return 1;

   if (minor >= minMinorVersion)
      return 1;

   return 0;
}
