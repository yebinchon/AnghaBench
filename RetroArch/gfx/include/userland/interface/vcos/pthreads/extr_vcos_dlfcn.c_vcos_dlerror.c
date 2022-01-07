
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* dlerror () ;
 int strncpy (char*,char const*,size_t) ;
 int vcos_assert (int) ;

int vcos_dlerror(int *err, char *buf, size_t buflen)
{

   const char *errmsg = dlerror();

   vcos_assert(buflen > 0);

   if (errmsg)
   {
      *err = -1;
      strncpy(buf, errmsg, buflen);
      buf[buflen-1] = '\0';
   }
   else
   {
      *err = 0;
      buf[0] = '\0';
   }
   return 0;
}
