
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
strprefix(const char *s1, const char *s2)
{
 int c;

 while ((c = *s2++) != '\0') {
  if (c != *s1++)
   return (0);
 }
 return (1);
}
