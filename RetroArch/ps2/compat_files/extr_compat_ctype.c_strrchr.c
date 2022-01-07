
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char * strrchr(const char *p, int ch)
{
 char *save;

 for (save = ((void*)0);; ++p) {
  if (*p == (char) ch)
   save = (char *)p;
  if (!*p)
   return(save);
 }

}
