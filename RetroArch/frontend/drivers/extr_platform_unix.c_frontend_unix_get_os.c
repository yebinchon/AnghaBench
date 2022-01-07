
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int release; } ;


 int frontend_android_get_version (int*,int*,int*) ;
 int sscanf (int ,char*,int*,int*,unsigned int*) ;
 int strlcpy (char*,char*,size_t) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static void frontend_unix_get_os(char *s,
      size_t len, int *major, int *minor)
{






   unsigned krel;
   struct utsname buffer;

   if (uname(&buffer) != 0)
      return;

   sscanf(buffer.release, "%d.%d.%u", major, minor, &krel);
   strlcpy(s, "Linux", len);


}
