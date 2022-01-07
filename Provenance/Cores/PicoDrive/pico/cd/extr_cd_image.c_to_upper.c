
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void to_upper(char *d, const char *s)
{
  for (; *s != 0; d++, s++) {
    if ('a' <= *s && *s <= 'z')
      *d = *s - 'a' + 'A';
    else
      *d = *s;
  }
}
