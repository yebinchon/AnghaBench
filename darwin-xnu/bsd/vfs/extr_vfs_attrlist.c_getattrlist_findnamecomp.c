
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;



__attribute__((used)) static void
getattrlist_findnamecomp(const char *mn, const char **np, ssize_t *nl)
{
 int counting;
 const char *cp;





 *np = ((void*)0);
 *nl = 0;
 counting = 0;
 for (cp = mn; *cp != 0; cp++) {
  if (!counting) {

   if (*cp != '/') {
    *np = cp;
    counting = 1;
   }
  } else {

   if (*cp == '/') {
    *nl = cp - *np;
    counting = 0;
   }
  }
 }

 if (counting)
  *nl = cp - *np;
}
