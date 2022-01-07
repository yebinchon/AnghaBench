
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Util_sscanbool(const char *s)
{
 if (*s == '0' && s[1] == '\0')
  return 0;
 if (*s == '1' && s[1] == '\0')
  return 1;
 return -1;
}
