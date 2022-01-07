
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void change_case(char *p, int to_upper)
{
 for (; *p != 0; p++) {
  if (to_upper && 'a' <= *p && *p <= 'z')
   *p += 'A' - 'a';
  else if (!to_upper && 'A' <= *p && *p <= 'Z')
   *p += 'a' - 'A';
 }
}
