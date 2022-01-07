
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Util_stricmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int striendswith(const char *s1, const char *s2)
{
 int pos;
 pos = strlen(s1) - strlen(s2);
 if (pos < 0)
  return 0;
 return Util_stricmp(s1 + pos, s2) == 0;
}
