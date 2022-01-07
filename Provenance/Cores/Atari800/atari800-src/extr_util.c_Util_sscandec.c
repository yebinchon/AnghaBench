
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Util_sscandec(const char *s)
{
 int result;
 if (*s == '\0')
  return -1;
 result = 0;
 for (;;) {
  if (*s >= '0' && *s <= '9')
   result = 10 * result + *s - '0';
  else if (*s == '\0')
   return result;
  else
   return -1;
  s++;
 }
}
