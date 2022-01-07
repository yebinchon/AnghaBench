
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *Util_strlower(char *s)
{
 char *p;
 for (p = s; *p != '\0'; p++)
  if (*p >= 'A' && *p <= 'Z')
   *p += 'a' - 'A';
 return s;
}
