
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
my_strrchr(char *p, int ch)
{
 char *save;

 for (save = ((void*)0);; ++p) {
  if (*p == ch)
   save = p;
  if (!*p)
   return(save);
 }

}
