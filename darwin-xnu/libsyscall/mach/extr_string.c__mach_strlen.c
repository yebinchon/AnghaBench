
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
_mach_strlen(const char *str)
{
 const char *p;
 for (p = str; p; p++) {
  if (*p == '\0') {
   return (int)(p - str);
  }
 }

 return 0;
}
