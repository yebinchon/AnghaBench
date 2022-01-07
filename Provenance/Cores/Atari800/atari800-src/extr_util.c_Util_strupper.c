
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *Util_strupper(char *s)
{
 char *p;
 for (p = s; *p != '\0'; p++)
  if (*p >= 'a' && *p <= 'z')
   *p += 'A' - 'a';
 return s;
}
