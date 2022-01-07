
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *COM_SkipPath (char *pathname)
{
 char *last;

 last = pathname;
 while (*pathname)
 {
  if (*pathname=='/')
   last = pathname+1;
  pathname++;
 }
 return last;
}
