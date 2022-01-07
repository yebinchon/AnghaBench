
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void strlwr_(char *string)
{
  char *p;
  for (p = string; *p; p++)
    if ('A' <= *p && *p <= 'Z')
      *p += 'a' - 'A';
}
